<?php
define('LOGO','../images/gallery/logo.png');
define('BD_LOGO','../images/bd.png');
define('NAME',"গণপ্রজাতন্ত্রী বাংলাদেশ সরকার 
<br>
অধ্যক্ষের কার্যালয়
<br>বরিশাল ইঞ্জিনিয়ারিং কলেজ");
define('TAGLINE','');
define('EMAIL','contact@bec.edu.com');
define('TEL','০১৭০৫৫৫৫৫৫৫৫');
define('ADDRESS','দুর্গাপুর, বরিশাল');



define('SIGNATURE_NAME','জনাব মোঃ লিটন রাব্বানী');
define('DESIGNATION','অধ্যক্ষ');
define('SIGNATURE_IMAGE','https://static.vecteezy.com/system/resources/thumbnails/023/264/092/small_2x/fake-hand-drawn-autographs-set-handwritten-signature-scribble-for-business-certificate-or-letter-isolated-illustration-vector.jpg');

define('FRONT_SITE_PATH','http://localhost/BEC/');
define('SLIDER_IMAGE',FRONT_SITE_PATH."/images/sliders/");
define('UPLOAD_SLIDER_IMAGE',$_SERVER['DOCUMENT_ROOT']."/BEC/images/sliders/");
define('UPLOAD_FACULTY_IMAGE',$_SERVER['DOCUMENT_ROOT']."/BEC/images/teachers/");

$curStr=$_SERVER['REQUEST_URI'];
$curArr=explode('/',$curStr);
$cur_path=$curArr[count($curArr)-1];
$dashboard_active="";
$payments_active="";
$profile_active="";

if($cur_path=='' || $cur_path=='dashboard'){
	$dashboard_active="active";
}elseif($cur_path=='' || $cur_path=='payments'){
	$payments_active="active";
}elseif($cur_path=='' || $cur_path=='profile'){
	$profile_active="active";
}else{

}
?>