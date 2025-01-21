<?php
define('SECURE_ACCESS', true);
include("../inc/constant.inc.php");
include("../inc/connection.inc.php");
include("../inc/function.inc.php");
include("../inc/en2bn.php");
require('../inc/vendor/autoload.php');
require_once("../inc/phpqrcode/qrlib.php");

$html = '<table class="table" width="100%" border="0" cellspacing="0" cellpadding="5" style="border-collapse: collapse;">';
$html .= '
    <tr>
        <td align="left" width="10%">                    
            <img src="'.BD_LOGO.'" width="100" height="100" /> 
        </td>
        <td align="center" colspan="4">
            <span style="font-size:20px">'.NAME.'</span>
            <br>
            '.ADDRESS.'
            <br>
            Tel: '.TEL.' | Email: '.EMAIL.'
            <br>
            '.FRONT_SITE_PATH.'
        </td>
        <td align="right" width="10%">                    
            <img src="'.LOGO.'" width="100" height="100" /> 
        </td>
    </tr>';

$html .= '
    <tr>
        <td align="left" colspan="6" style="height:4; border-bottom: 1px solid black;">                    
            <hr>
        </td>
    </tr>';

// **Main Content with Borders**
$html .= '
    <tr style="border: 0px solid black;">
        <td align="left" colspan="6" style="padding-top:30px;text-align: justify;font-size:20px; border: 0px solid black;">
            অত্র কলেজের সিভিল/ইইই বিভাগের ছাত্র/ছাত্রী ধ্রুবরাজ রায়, ঢাবি রেজিঃ ৮৬২, শিক্ষাবর্ষ ২০২০-২০২১ এর সকল একাডেমিক কার্যক্রম শেষ হওয়া
        </td>
    </tr>';  

$sql = "SELECT * FROM depts_lab_list";
$res = mysqli_query($con, $sql);
if (mysqli_num_rows($res) > 0) {
    while ($row = mysqli_fetch_assoc($res)) {
        // Force a page break before the department name if necessary
        $html .= '
        <tr align="center" style="border: 0px solid black; page-break-before: always;">
            <td colspan="6" align="center" style="font-size:25px; border: 1px solid black;">
                <u>'.$row['name_bn'].'</u>
            </td>
        </tr>';
        
        $html .= '
        <tr style="border: 1px solid black;">
            <td align="center" width="10%" style="border: 1px solid black;">ক্রমিক</td>
            <td align="left" width="30%" style="border: 1px solid black;">বিভাগ/সপ</td>
            <td align="left" width="15%" style="border: 1px solid black;">দেনা-পাওনা তথ্য</td>
            <td align="left" width="15%" style="border: 1px solid black;">ভারপ্রাপ্ত কর্মকর্তার স্বাক্ষর</td>
            <td align="left" width="15%" style="border: 1px solid black;">ওয়ার্কশপ সুপার/সপ ইনচার্জের স্বাক্ষর</td>
            <td align="left" width="15%" style="border: 1px solid black;">বিভাগীয় প্রধানের স্বাক্ষর</td>
        </tr>';

        $lab_sql = "SELECT * FROM lab_list WHERE dept_id='".$row['id']."'";
        $lab_res = mysqli_query($con, $lab_sql);
        if (mysqli_num_rows($lab_res) > 0) {
            $i = 1;
            while ($lab_row = mysqli_fetch_assoc($lab_res)) {
                // Add page-break-before or prevent breaking for each lab name
                $html .= '
                <tr style="border: 1px solid black; page-break-before: always;">
                    <td align="center" style="border: 1px solid black;">'.$i.'</td>
                    <td align="left" style="border: 1px solid black;">'.$lab_row['name'].'</td>
                    <td align="left" style="border: 1px solid black;"></td>
                    <td align="left" style="border: 1px solid black;"></td>
                    <td align="left" style="border: 1px solid black;"></td>
                    <td align="left" style="border: 1px solid black;"></td>
                </tr>';
                $i++;
            }
        } else {
            $html .= '
            <tr style="border: 0px solid black;">
                <td colspan="6" align="center" style="border: 1px solid black;">কোন তথ্য পাওয়া যায়নি</td>
            </tr>';
        }
    }
} else {
    $html .= '
    <tr style="border: 0px solid black;">
        <td colspan="6" align="center" style="border: 1px solid black;">কোন তথ্য পাওয়া যায়নি</td>
    </tr>';
}

// **Footer with Borders**
$html .= '
<tr style="border: 0px solid black;">
    <td align="center" colspan="6" style="font-size:20px;padding-top:70px">
        তাঁর নিকট থেকে ___________________ টাকা পাওয়া/ফেরত দেয়া হলো।
    </td>
</tr>';

$html .= '
<tr style="border: 0px solid black;">
    <td align="center" colspan="3" style="font-size:20px;padding-top:70px">কোষাধ্যক্ষ</td>
    <td align="center" colspan="3" style="font-size:20px;padding-top:70px">হিসাবরক্ষক</td>
</tr>';

$html .= '
<tr style="border: 0px solid black;">
    <td align="center" colspan="6" style="font-size:20px;padding-top:20px"> 
    উপরোক্ত তথ্যের প্রেক্ষিতে তাকে ছাড়পত্র প্রদানের নির্দেশ প্রদান করা হলো।
    </td>
</tr>';

$html .= '
<tr style="border: 0px solid black;">
    <td align="left" colspan="1"></td>
    <td align="center" colspan="3"></td>
    <td align="center" style="padding-top:100px" colspan="2">
        <div align="right">
            <img src="'.SIGNATURE_IMAGE.'" width="100" height="50" />
            <span style="font-style:30px">
                <br>
                    <span style="font-size:20px">'.SIGNATURE_NAME.'</span>
                <br>
            </span>
        </div>
    </td>
</tr>';

$html .= '</table>';

$mpdf = new \Mpdf\Mpdf([
    'tempDir' => __DIR__ . '/custom',
    'default_font_size' => 12,
    'default_font' => 'FreeSerif',
    'margin_left' => 20,
    'margin_right' => 20,
    'margin_top' => 2,
    'margin_bottom' => 10,
]);
$mpdf->SetTitle('Notice Barisal Engineering College');
// $mpdf->SetFooter('Developed By The Web divers');
$mpdf->WriteHTML($html);
$file = time().'.pdf';
$mpdf->output("clearance_".$file, 'I');
?>
