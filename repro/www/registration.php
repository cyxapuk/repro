<?php

include_once('../bin/starter.html');

if($controller->isAuthorized())
{
    $controller->Redirect();
}

$success = $controller->clearStr($controller->gvar('success'));

if(!empty($success))
{
    $controller->displayRegistrationSuccess('registration_success.tpl');
}
else
{
    $controller->displayRegistration('registration.tpl');    
}

?>