<?php

include_once('../bin/starter.html');

$controller->isLogin();

Fabrika::addTools('moduleCatalog', array(), 'CatalogController');
$moduleCatalog = Fabrika::getTools('moduleCatalog');

$moduleCatalog->displayObjectProperties('module-catalog-objects-properties.tpl');  

?>