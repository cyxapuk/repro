<?php

include_once('../bin/starter.html');

$controller->isLogin();

Fabrika::addTools('moduleCatalog', array(), 'CatalogController');
$moduleCatalog = Fabrika::getTools('moduleCatalog');

$moduleCatalog->displayCategoryProperties('module-catalog-cats-properties.tpl');  

?>