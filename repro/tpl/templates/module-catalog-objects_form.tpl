{include file="header_admin.tpl" title="Объект редактирование/добавление"}

<div class="layout">
    
    {if $smarty.get.object_id}
    <h3>Редактировать объект</h3>
    {else}
    <h3>Добавить объект</h3>
    {/if}    
    
	<form name="form" method="post" action="" enctype="multipart/form-data">
    <input type="hidden" name="catalog_id" value="{$array.catalog_id}" />
    <input type="hidden" name="category_id" value="{$array.category_id}" />
    <input type="hidden" name="object_id" value="{$array.object_id}" />
    <input type="hidden" name="object_sort" value="{$array.moduleCatalogObject.object_sort}" />
    <fieldset>
    
	<label class="label">Название</label><input type="text" name="object_title" value="{$array.moduleCatalogObject.object_title}"{if isset($array.errors.object_title_error)} class="error"{/if} />
	<div class="clearfix"></div>     

    {include file="module-catalog-objects-fields.tpl"}    

	<div class="buttons">        
		<input type="submit" name="b1" value="Сохранить" />
        <input type="submit" name="b2" value="Применить" />
	</div>       
        
    </fieldset>
	</form>
    

</div>

{include file="footer_admin.tpl"}