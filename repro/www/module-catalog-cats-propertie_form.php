<?php

include_once('../bin/starter.html');

$controller->isLogin();

Fabrika::addTools('moduleCatalog', array(), 'CatalogController');
$moduleCatalog = Fabrika::getTools('moduleCatalog');

$moduleCatalog->displayCategoryPropertieForm('module-catalog-cats-propertie_form.tpl');  

?>