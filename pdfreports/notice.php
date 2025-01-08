<?php
include("../inc/constant.inc.php");
include("../inc/connection.inc.php");
include("../inc/function.inc.php");
require_once("../inc/smtp/class.phpmailer.php");
require('../inc/vendor/autoload.php');
require_once("../inc/phpqrcode/qrlib.php");
if (isset($_GET['notice_id']) && $_GET['notice_id']!="") {
    $notice_id=get_safe_value($_GET['notice_id']);
}else{
    $_SESSION['PERMISSION_ERROR']=1;
    redirect("/");
}
$sql="select * from `notice` where id='$notice_id'";
$res=mysqli_query($con,$sql);
$html="";

$filepath = "../images/qr_code/qrcode.png";
QRcode::png(FRONT_SITE_PATH."pdfreports/notice?notice_id=".$notice_id, $filepath);
if(mysqli_num_rows($res)>0){
    $row=mysqli_fetch_assoc($res);
    $html='<table class="table" width="100%">';
    $html.='
        <tr>
            <td align="center">                    
            <img width="150" src="'.LOGO.'" width="100" height="100" /> 
            </td>
            <td  align="center" colspan="4">
            <span style="font-size:20px">'.NAME.'</span>
            <br>
            '.ADDRESS.'
            <br>
            Tel: '.TEL.' | Email: '.EMAIL.'
            <br>
            '.FRONT_SITE_PATH.'
            </td>
            <td align="center">                    
            <img width="150" src="'.LOGO.'" width="100" height="100" /> 
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
                    স্মারক নং: '.$row['reference'].'
                </td>
                <td  align="right" colspan="3">
                    তারিখ: '.date("d M Y ",($row['added_on'])).'
                </td>
            </tr>';
            $html.='
                <tr>
                    <td align="left" colspan="7" align="center" style="padding-top:30px">                    
                    <u style="font-size:35px">'.$row['title'].'</u>
                    </td>
                </tr>';
                $html.='
                    <tr >
                        <td align="left" colspan="7" align="center" style="padding-top:10px">                    
                            <p>'.$row['details'].'</p>
                        </td>
                    </tr>';
            $html.='
            <tr>
                <td align="left"  colspan="1">
                <img width="150" src="'.$filepath.'" width="100" height="100" />
                </td>
                <td  align="center" colspan="2"> 
                </td>
                <td  align="center" style="padding-top:100px" colspan="4">
                    <div align="right">
                        <img  src="'.SIGNATURE_IMAGE.'" width="100" height="50" />
                        <span style="font-style:30px">
                            <br>
                                <span style="font-size:20px">'.SIGNATURE_NAME.' </span>
                            <br>
                            '.DESIGNATION.'
                            <br>
                            '.NAME.'
                        </span>
                    </div>
                </td>
            </tr>';
            $html .= '
            <tr>
                <td align="left" colspan="7">
                    <u>সদয় অবগতি ও প্রয়োজনীয় কার্যার্থে অনুলিপি(জেষ্ঠতার ভিত্তিতে নয়):</u>
                    <ol>';
                    $notice_res = mysqli_query($con, "SELECT referances.name FROM referances INNER JOIN notice_referance ON referances.id = notice_referance.referance_id INNER JOIN notice ON notice.id = notice_referance.notice_id WHERE notice.id = '".$notice_id."'");
                    while ($notice_res_row = mysqli_fetch_assoc($notice_res)) {
                        $html .= '<li>' . $notice_res_row['name'] . '</li>';
                    }
                    
                    $html .= '
                    </ol>
                </td>
            </tr>';
        
	    $html.='</table>';
}else{
    redirect("/");
}
// echo $html;
$mpdf=new \Mpdf\Mpdf([
    'tempDir' => __DIR__ . '/custom',
    'default_font_size' => 12,
    'default_font' => 'FreeSerif',
	'margin_left' => 20,
	'margin_right' => 20,
	'margin_top' => 2,
	'margin_bottom' => 10,
]);
$mpdf->SetTitle('Notice Barisal Engineering College Hall');
$mpdf->SetFooter('Developed By The Web divers');
$mpdf->WriteHTML($html);
$file=time().'.pdf';
$mpdf->output($file,'I');