<?php
define('SECURE_ACCESS', true);
include("../inc/constant.inc.php");
include("../inc/connection.inc.php");
include("../inc/function.inc.php");
include("../inc/en2bn.php");
require('../inc/vendor/autoload.php');
require_once("../inc/phpqrcode/qrlib.php");
$filepath = "../images/qr_code/qrcode.png";
$additional_sql = "";
$page_break = "";  // Ensure first page has no page break
$first_page = true; // Flag to track first iteration

if (isset($_GET['reg_no']) && $_GET['reg_no'] > 0) {
    $reg_no = get_safe_value($_GET['reg_no']);
    $additional_sql = " WHERE reg_no='$reg_no'";
}

$query = "SELECT name, father_name, reg_no, session, study_period FROM students $additional_sql"; 
$result = mysqli_query($con, $query);

$all_testimonials_html = ''; 
if(mysqli_num_rows($result)<=0){
    redirect("/");
}
while ($student = mysqli_fetch_assoc($result)) {
    if (!$first_page) {
        $all_testimonials_html .= "<pagebreak />";
    }
    $first_page = false; 

    $mpdf = new \Mpdf\Mpdf([
        'tempDir' => __DIR__ . '/custom',
        'default_font_size' => 12,
        'default_font' => 'FreeSerif',
        'margin_left' => 20,
        'margin_right' => 20,
        'margin_top' => 10,
        'margin_bottom' => 10,
    ]);

    $mpdf->SetTitle('TESTIMONIAL - ' . $student['name']);
    $mpdf->SetFooter('<div style="text-align:center;">Developed By The Web Divers</div>');

    $html = '<table width="100%">'; 
    $html .= ' 
        <tr>
            <td align="left" colspan="3" style="font-size:20px">
                <span style="font-size:25px; font-family: Siyam Rupali;">সিভিল ইঞ্জিনিয়ারিং বিভাগ</span><br>
                বরিশাল ইঞ্জিনিয়ারিং কলেজ<br>বরিশাল - ৮২০০, বাংলাদেশ<br>Email: ' . EMAIL . '
            </td>
            <td align="center" colspan="1">
                <img src="' . LOGO . '" width="100" height="100" />
            </td>
            <td align="right" colspan="3" style="font-size:20px">
                Department of Civil Engineering<br>Barishal Engineering College<br>Barishal-8200, Bangladesh<br>Email: ' . EMAIL . '
            </td>
        </tr>';
    $html .= '<tr><td colspan="7"><hr></td></tr>';
    $html .= '
        <tr>
            <td align="left" colspan="4">
                <strong>Ref No: BEC/TESTIMONIALS/' . $student['reg_no'] . '</strong>
            </td>
            <td align="right" colspan="3">
                <strong>Date: ' . date('d M Y') . '</strong>
            </td>
        </tr>';
    $html .= '
        <tr>
            <td colspan="7" align="center" style="padding-top:30px">
                <u style="font-size:35px">TO WHOM IT MAY CONCERN</u>
            </td>
        </tr>';
    $html .= '<tr>
            <td colspan="7" style="text-align: justify; padding-top: 10px; font-size: 20px; line-height: 1.8;">
                <p style="padding-top:100px">
                    This is to certify that <strong>' . $student['name'] . '</strong>, bearing Reg No.
                    <strong>' . $student['reg_no'] . '</strong>, Session <strong>' . $student['session'] . '</strong>,
                    father\'s name: <strong>' . $student['father_name'] . '</strong>,
                    is a current student at the Department of Civil Engineering of Barishal Engineering College, Barishal,
                    under the affiliation of the University of Dhaka.
                </p><br>
                <p style="font-size: 20px;">
                    He bears a good moral character. He did not take part in any activity subversive to the state
                    or discipline.
                </p><br>
                <p style="font-size: 20px;">
                    I wish every success in his life.
                </p>
            </td>
        </tr>';
    $qr_text = "http://mashallah.shop/BEC/notice_files/" . $student['reg_no'] . "_TESTIMONIAL.pdf";
    QRcode::png($qr_text, $filepath);
    $html .= '
        <tr>
            <td align="right" colspan="2">
                <img src="' . $filepath . '" width="150" height="150" />
            </td>
            <td align="right" colspan="5">
                <span align="center">
                    <span style="font-size:20px" align="center">
                        Md. Liton Rabbani <br>
                        Assistant Professor &amp; Head <br>
                        Department of Civil Engineering<br>
                        Barishal Engineering College, Barishal, Bangladesh.<br>
                        Cell: +8801745599180<br>
                        E-mail: litonkce01@gmail.com
                    </span>
                </span>
            </td>
        </tr>';

    $html .= '</table>';
    $mpdf->WriteHTML($html);
    $file = $student['reg_no'] . '_TESTIMONIAL.pdf';
    $mpdf->Output("../notice_files/" . $file, 'F'); 
    $all_testimonials_html .= $html;
}

$all_mpdf = new \Mpdf\Mpdf([
    'tempDir' => __DIR__ . '/custom',
    'default_font_size' => 12,
    'default_font' => 'FreeSerif',
    'margin_left' => 20,
    'margin_right' => 20,
    'margin_top' => 10,
    'margin_bottom' => 10,
]);
$all_mpdf->SetTitle('All Testimonials - Barishal Engineering College');
$all_mpdf->SetFooter('<div style="text-align:center;">Developed By The Web Divers</div>');
$all_mpdf->WriteHTML($all_testimonials_html);
$all_mpdf->Output("../notice_files/ALL_TESTIMONIALS.pdf", 'I'); // Save the file
mysqli_close($con);
?>