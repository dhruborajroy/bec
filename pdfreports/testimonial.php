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
$html.='
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
                Ref No: BEC/testimonial/25
            </td>
            <td  align="right" colspan="3">
                Date: ss ইং
            </td>
        </tr>';
        $html.='
            <tr>
                <td align="left" colspan="7" align="center" style="padding-top:30px">                    
                <u style="font-size:35px">TO WHOM IT MAY CONCERN</u>
                </td>
            </tr>';
            $html.='<tr>
                <td colspan="7" style="text-align: justify; padding-top: 10px; font-size: 20px; line-height: 1.8;">
                    <p  style="padding-top:100px" >
                        This is to certify that <strong>DEWAN TANJEEM AHAMMED TONMOY</strong>, bearing Reg No.
                        <strong>1073</strong>, Session <strong>2021-22</strong> father\'s name: <strong>Dewan Osman Goni</strong>,
                        is a current student at the Department of Civil Engineering of Barishal Engineering College, Barishal, 
                        under the affiliation of the University of Dhaka.  
                    </p><br>
                    <p  style="font-size: 20px;"  >
                        He bears a good moral character. He did not take part in any activity subversive to the state
                        or discipline.
                    </p><br>
                    <p  style="font-size: 20px;" >
                        I wish every success in his life.
                    </p>
                </td>
            </tr>';
        $html.='
        <tr>
            <td  align="left" style="padding-top:100px" colspan="5">
                <div align="right">
                    <img  src="'.SIGNATURE_IMAGE.'" width="100" height="50" />
                    <span style="font-style:30px">
                        <br>
                            <span style="font-size:20px">
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
$mpdf=new \Mpdf\Mpdf([
    'tempDir' => __DIR__ . '/custom',
    'default_font_size' => 12,
    'default_font' => 'FreeSerif',
	'margin_left' => 20,
	'margin_right' => 20,
	'margin_top' => 2,
	'margin_bottom' => 10,
]);
$mpdf->SetTitle('Notice Barisal Engineering College');
$mpdf->SetFooter('Developed By The Web divers');
$mpdf->WriteHTML($html);
$mpdf->output("../notice_files/".$file,'I');