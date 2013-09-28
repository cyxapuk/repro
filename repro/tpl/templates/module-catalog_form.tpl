{include file="header_admin.tpl" title="Каталог редактирование/добавление"}

<div class="layout">
    
    <h3>Каталог редактирование/добавление</h3>
    
	<form name="form" method="post" action="">
    <input type="hidden" name="catalog_id" value="{$array.catalog_id}" />
    <fieldset>
    
	<label class="label">Название</label><input type="text" name="catalog_title" value="{if isset($array.POST.catalog_title)}{$array.POST.catalog_title}{else}{$array.moduleCatalog.catalog_title}{/if}"{if isset($array.errors.catalog_title_error)} class="error"{/if} />
	<div class="clearfix"></div>     
    
	<div class="buttons">        
		<input type="submit" name="b1" value="Сохранить" />
        <input type="submit" name="b2" value="Применить" />
	</div>       
    
    </fieldset>
	</form>    
    

</div>

{include file="footer_admin.tpl"}