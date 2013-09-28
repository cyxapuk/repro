<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>{$title}</title>
<link href="{$_FILES_URL}/favicon.ico" rel="shortcut icon" type="image/x-icon">
<link href="{$_FILES_URL}css/style.css" rel="stylesheet" type="text/css" media="screen">
<link href="{$_FILES_URL}css/jquery-ui.css" rel="stylesheet" type="text/css" media="screen">
<!--[if lt IE 9]>
	<script src="{$_FILES_URL}js/html5shiv.js"></script>
	<![endif]-->
<link rel="stylesheet" href="{$_FILES_URL}css/jquery-ui.css" />
<script src="{$_FILES_URL}js/jquery-1.8.2.js"></script>
<script src="{$_FILES_URL}js/script.js?rnd={$RND}"></script>
<script src="{$_FILES_URL}js/ifc.js"></script>
<script src="{$_FILES_URL}js/jquery-ui.js"></script>
<script src="{$_FILES_URL}_libs/ckeditor/ckeditor.js"></script>
<script>
window.onerror = function() 
{
    return true
};
</script>
</head>
<body>
<noscript>
<p class="alertjs">This Website requires your browser to be JavaScript enabled.<a href="/">Reload the page.</a></p>
</noscript>
	
	<header><div class="wrapper">
        <a class="logo" href="{$SITE_URL}"></a>
	</div></header>
	
	<nav id="main"><div class="wrapper">
		<div class="tabs">
            <a href="{$SITE_URL}index.php"{if $target == 'index.tpl'} class="active"{/if}>Cайт</a>
            <a href="{$SITE_URL}page.php"{if $target == 'page.tpl'} class="active"{/if}>Страницы</a>
            <a href="{$SITE_URL}template.php"{if $target == 'template.tpl'} class="active"{/if}>Шаблоны</a>
            <a href="{$SITE_URL}language.php"{if $target == 'language.tpl' || $target == 'language_form.tpl'} class="active"{/if}>Языки</a>
            <a href="{$SITE_URL}module-catalog.php"{if isset($array.moduleCatalog)} class="active"{/if}>Модули</a>
            <a href="{$SITE_URL}user.php"{if $target == 'user.tpl' || $target == 'user_form.tpl'} class="active"{/if}>Пользователи</a>
            <a href="{$SITE_URL}logout.php">Выйти</a>
		</div>
        
        <div class="submenu">
            {if $target == 'page.tpl'|| $target == 'page_form.tpl' || $target == 'menu.tpl' || $target == 'menu_form.tpl'}
                <a href="{$SITE_URL}page.php"{if $target == 'page.tpl'} class="active"{/if}>Список страниц</a>
                {if $target == 'page.tpl' || $target == 'page_form.tpl'}
                    <a href="{$SITE_URL}page_form.php"{if $target == 'page_form.tpl'} class="active"{/if}>Новая страница</a>                
                {/if}                
                <a href="{$SITE_URL}menu.php"{if $target == 'menu.tpl'} class="active"{/if}>Навигация</a>
                {if $target == 'menu.tpl' || $target == 'menu_form.tpl'}
                    <a href="{$SITE_URL}menu_form.php"{if $target == 'menu_form.tpl'} class="active"{/if}>Новая навигация</a>                
                {/if}                               
            {/if}
            
            {if $target == 'template.tpl' || $target == 'template_form.tpl'}
                <a href="{$SITE_URL}template.php"{if $target == 'template.tpl'} class="active"{/if}>Список</a>
                <a href="{$SITE_URL}template_form.php"{if $target == 'template_form.tpl'} class="active"{/if}>Добавить новый</a>
            {/if}            
            
            {if $target == 'language.tpl' || $target == 'language_form.tpl'}
                <a href="{$SITE_URL}language.php"{if $target == 'language.tpl'} class="active"{/if}>Список</a>
                <a href="{$SITE_URL}language_form.php"{if $target == 'language_form.tpl'} class="active"{/if}>Добавить новый</a>
            {/if}
            
            {include file="module-catalog-menu.tpl"}
            
		</div>
        
	</div></nav>
	
	<section><div class="wrapper">