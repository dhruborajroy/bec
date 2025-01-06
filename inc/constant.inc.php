<?php
define('NAME','Get Admitted Online');
define('TAGLINE','Get Admitted Online');
define('EMAIL','contact@thewebdivers.com');
define('FRONT_SITE_PATH','http://localhost/BEC/');
define('SLIDER_IMAGE',FRONT_SITE_PATH."/images/sliders/");
define('UPLOAD_SLIDER_IMAGE',$_SERVER['DOCUMENT_ROOT']."/BEC/images/sliders/");
define('UPLOAD_STUDENT_IMAGE',$_SERVER['DOCUMENT_ROOT']."/BEC/images/sliders/");
// Bkash Test Constants
define("APP_KEY","4f6o0cjiki2rfm34kfdadl1eqq");
define("APP_SECRET","2is7hdktrekvrbljjh44ll3d9l1dtjo4pasmjvs5vl5qr3fug4b");
define("USERNAME","sandboxTokenizedUser02");
define("PASSWORD","sandboxTokenizedUser02@12345");
define("BASE_URL",'https://tokenized.sandbox.bka.sh/v1.2.0-beta');
define("FORM_AMOUNT",100);
define("SERVICE_CHARGE",.24);
//Bkash live credentials

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