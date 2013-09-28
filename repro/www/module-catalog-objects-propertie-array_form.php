<?php

include_once('../bin/starter.html');

$controller->isLogin();

Fabrika::addTools('moduleCatalog', array(), 'CatalogController');
$moduleCatalog = Fabrika::getTools('moduleCatalog');

$moduleCatalog->displayObjectPropertieArrayForm('module-catalog-objects-propertie-array_form.tpl');  

?>