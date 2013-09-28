{include file="header_admin.tpl" title="Поле редактирование/добавление"}

<div class="layout">
    
    <h3>Поле редактирование/добавление</h3>
    
	<form name="form" method="post" action="">
    <input type="hidden" name="catalog_id" value="{$array.catalog_id}" />
    <input type="hidden" name="category_id" value="{$array.category_id}" />
    <input type="hidden" name="propertie_id" value="{$array.propertie_id}" />
    <input type="hidden" name="array_id" value="{$array.array_id}" />
    <fieldset>
    
	<label class="label">Название</label><input type="text" name="array_value" value="{if isset($array.POST.array_value)}{$array.POST.array_value}{else}{$array.moduleCatalogCategoryPropertieArray.array_value}{/if}"{if isset($array.errors.array_value_error)} class="error"{/if} />
	<div class="clearfix"></div>     
    
	<div class="buttons">        
		<input type="submit" name="b1" value="Сохранить" />
        <input type="submit" name="b2" value="Применить" />
	</div>       
    
    </fieldset>
	</form>    
    

</div>

{include file="footer_admin.tpl"}