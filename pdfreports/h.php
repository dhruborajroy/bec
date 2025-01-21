<?php
define('SECURE_ACCESS', true);
include("../inc/constant.inc.php");
include("../inc/connection.inc.php");
include("../inc/function.inc.php");
include("../inc/en2bn.php");
require('../inc/vendor/autoload.php');
require_once("../inc/phpqrcode/qrlib.php");
$filepath = "../images/qr_code/qrcode.png";
QRcode::png("Demo QR code.", $filepath);
$html="";
$html='<table class="table" width="100%">';
$html.='pdfreports/referance_letter.php
    <tr>
        <td align="left" colspan="3" style="font-size:20px">                    
            পুরকৌশল বিভাগ<br>বরিশাল ইঞ্জিনিয়ারিং কলেজ<br>বরিশাল - ৮২০০, বাংলাদেশ<br>Email: '.EMAIL.'
        </td>
        <td  align="center" colspan="1">
        <img  src="'.LOGO.'" width="100" height="100" /> 
        </td>
        <td align="right" colspan="3" style="font-size:20px">                    
            Department of Civil Engineering<br>Barishal Engineering College<br>Barishal-8200, Bangladesh<br>Email: '.EMAIL.'
        </td>
    </tr>';
    $html.='
        <tr>
            <td align="left" colspan="7" style="height:4">                    
                <hr>
            </td>
        </tr>';
    $html.='
        <tr >
            <td align="left" colspan="4">                    
                Ref No: BEC/MOI/25
            </td>
            <td  align="right" colspan="3">
                Date: 13 Jan 2025
            </td>
        </tr>'; // Main Body 

        $html.='
        <tr>
            <td align="left" colspan="6" style="font-size:20px">
                অত্র কলেজের সিভিল/ইইই বিভাগের ছাত্র/ছাত্রী ধ্রুবরাজ রায়, ঢাবি রেজিঃ ৮৬২, শিক্ষাবর্ষ ২০২০-২০২১ এর সকল একাডেমিক কার্যক্রম শেষ হওয়া 
            </td>
        </tr>';     



        $sql="SELECT * FROM depts_lab_list";
        $res=mysqli_query($con,$sql);
        if(mysqli_num_rows($res)>0){
            $i=1;
            while($row=mysqli_fetch_assoc($res)){

        $html.='
        <tr align="center">
            <td  colspan="6" align="center" style="font-size:25px">
                <u>'.$row['name_bn'].'</u>
            </td>
        </tr>';
                    $html.='
                    <tr style="border:1px;">
                        <td align="left" style="table-border:10px;">
                            ক্রমিক
                        </td>
                        <td align="left" >
                            বিভাগ/সপ
                        </td>
                        <td align="left" >
                            দেনা-পাওনা তথ্য
                        </td>
                        <td align="left" >
                            ভারপ্রাপ্ত কর্মকর্তার স্বাক্ষর
                        </td>
                        <td align="left" >
                            ওয়ার্কশপ সুপার/সপ ইনচার্জের স্বাক্ষর
                        </td>
                        <td align="left" >
                            বিভাগীয় প্রধানের স্বাক্ষর
                        </td>
                    </tr>';

                $lab_sql="SELECT * FROM lab_list where dept_id='".$row['id']."'";
                $lab_res=mysqli_query($con,$lab_sql);
                $lab_count=mysqli_num_rows($lab_res);
                if($lab_count>0){
                    $i=1;
                    while($lab_row=mysqli_fetch_assoc($lab_res)){
                    $html.='
                    <tr>
                        <td align="left" >
                            '.$i.'
                        </td>
                        <td align="left" width="40%">
                            '.$lab_row['name'].'
                        </td>
                        <td align="left" >
                            
                        </td>
                        <td align="left" >
                        </td>
                        <td align="left" >
                        </td>
                        <td align="left" rowspan'.$lab_count.'>

                        </td>
                    </tr>';
                    $i++;
                } 
                //IF condition ended
            } else {
                $html.='
                <tr>
                <td colspan="8" align="center"></td>
                </tr>';
            }//else ended
            $i++;
        } 
        //IF condition ended
    } else {
        $html.='
        <tr>
        <td colspan="8" align="center"></td>
        </tr>';
    }//else ended

    $html.='
    <tr >
        <td align="right" colspan="6" style="font-size:20px;padding-top:70px">
            তাঁর নিকট থেকে ___________________ টাকা পাওয়া/ফেরত দেয়া হলো। 
        </td>
    </tr>';
    $html.='
    <tr >
    </tr>';
    $html.='
    <tr >
        <td align="center" colspan="2" style="font-size:20px;padding-top:70px">
            কোষাধ্যক্ষ
        </td>
        <td align="center" colspan="4" style="font-size:20px;padding-top:70px">
            হিসাবরক্ষক
        </td>
    </tr>';
    $html.='
    <tr >
        <td align="center" colspan="6" style="font-size:20px;padding-top:70px"> 
        উপরোক্ত তথ্যের প্রেক্ষিতে তাকে ছাড়পত্র প্রদানের নির্দেশ প্রদান করা হলো। 
        </td>
    </tr>';

    // Main body ended

        $html.='
        <tr>
            <td  align="left" style="padding-top:100px" colspan="5">
                <div align="right">
                    <img  src="'.SIGNATURE_IMAGE.'" width="100" height="50" />
                    <span style="font-style:20px">
                        <br>
                            <span style="font-size:15px">
                            Md. Liton Rabbani <br>
                            Assistant Professor &amp; Head <br>
                            Department of Civil Engineering<br>
                            Barishal Engineering College, Barishal, Bangladesh.<br>
                            Cell: +8801745599180<br>
                            E-mail: litonkce01@gmail.com </span>
                        <br>
                    </span>
                </div>
            </td>
            <td align="right"  colspan="2">
                <img  src="'.$filepath.'" width="150" height="150" />
            </td>
        </tr>';
	    $html.='</table>';

// echo $html;
$mpdf = new \Mpdf\Mpdf([
    'tempDir' => __DIR__ . '/custom',
    'default_font_size' => 11, // Reduced font size
    'default_font' => 'FreeSerif',
    'margin_left' => 10, // Reduced margins
    'margin_right' => 10,
    'margin_top' => 2,
    'margin_bottom' => 2,
]);
// Force everything into a single page
$mpdf->SetCompression(true); // Enable content compression
$mpdf->shrink_tables_to_fit = 1; // Shrink tables if needed
$mpdf->SetAutoPageBreak(false); // Disable auto page breaks
$mpdf->SetDisplayMode('fullpage'); // Display in full-page mode

$html = '<style>
    body { font-size: 11px; line-height: 1.1; } 
    table { page-break-inside: avoid; } /* Prevent tables from breaking across pages */
</style>' . $html;
$html = '<style>
    body { transform: scale(0.95); transform-origin: top left; } 
</style>' . $html;
$mpdf->SetTitle('Notice Barisal Engineering College');
// $mpdf->SetFooter('Developed By The Web divers');
$mpdf->WriteHTML($html);
$mpdf->output("../notice_files/".$file,'I');