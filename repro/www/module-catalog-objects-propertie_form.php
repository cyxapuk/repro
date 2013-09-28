<?php

include_once('../bin/starter.html');

$controller->isLogin();

Fabrika::addTools('moduleCatalog', array(), 'CatalogController');
$moduleCatalog = Fabrika::getTools('moduleCatalog');

$moduleCatalog->displayObjectPropertieForm('module-catalog-objects-propertie_form.tpl');  

?>