{include file="header_admin.tpl" title="Категория редактирование/добавление"}

<div class="layout">
    
    {if $smarty.get.category_id}
    <h3>Редактировать категорию</h3>
    {else}
    <h3>Добавить категорию</h3>
    {/if}    
    
	<form name="form" method="post" action="" enctype="multipart/form-data">
    <input type="hidden" name="catalog_id" value="{$array.catalog_id}" />
    <input type="hidden" name="category_id" value="{$array.category_id}" />
    <input type="hidden" name="category_sort" value="{$array.moduleCatalogCategory.category_sort}" />
    <fieldset>
    
	<label class="label">Название</label><input type="text" name="category_title" value="{$array.moduleCatalogCategory.category_title}"{if isset($array.errors.category_title_error)} class="error"{/if} />
	<div class="clearfix"></div>     

    {include file="module-catalog-cats-fields.tpl"}    

	<div class="buttons">        
		<input type="submit" name="b1" value="Сохранить" />
        <input type="submit" name="b2" value="Применить" />
	</div>       
        
    </fieldset>
	</form>
    

</div>

{include file="footer_admin.tpl"}