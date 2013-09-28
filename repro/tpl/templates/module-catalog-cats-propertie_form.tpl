{include file="header_admin.tpl" title="Характеристики редактирование/добавление"}

<div class="layout">
    
    {if $smarty.get.propertie_id}
    <h3>Редактировать характеристику</h3>
    {else}
    <h3>Добавить характеритику</h3>
    {/if}
    
	<form name="form" method="post" action="">
    <input type="hidden" name="catalog_id" value="{$array.catalog_id}" />
    <input type="hidden" name="category_id" value="{$array.category_id}" />
    <input type="hidden" name="propertie_id" value="{$array.propertie_id}" />
    <fieldset>
    
    {if $smarty.get.propertie_id == 0}
    
    <label class="label">Выбрать</label>
	<div class="select">
        <select name="exists_propertie_id" id="propertie_category_select">
        <option value="0">Добавить новую</option>            
        {foreach from=$array.propertielist key=key item=propertie}
            <option value="{$propertie.propertie_id}">{$propertie.propertie_title}</option>
        {/foreach}
        </select>   
    </div>
    <div class="clearfix"></div>    
    
    {/if}    
    
    <div id="propertie_add">
    	<label class="label">Название</label><input type="text" name="propertie_title" value="{if isset($array.POST.propertie_title)}{$array.POST.propertie_title}{else}{$array.moduleCatalogCategoryPropertie.propertie_title}{/if}"{if isset($array.errors.propertie_title_error)} class="error"{/if} />
    	<div class="clearfix"></div>
        
        <label class="label">Тип</label>
    	<div class="select">   
            <select name="type_id">            
            {foreach from=$array.moduleCatalogType key=key item=title}
                <option value="{$key}"{if $key == $array.moduleCatalogCategoryPropertie.type_id} selected="selected"{/if}>{$title}</option>
            {/foreach}
            </select>   
        </div>
        <div class="clearfix"></div>  
    </div>   
    
	<div class="buttons">        
		<input type="submit" name="b1" value="Сохранить" />
        <input type="submit" name="b2" value="Применить" />
	</div>       
    
    </fieldset>
	</form>    
    
    {if $array.propertiearraylist && $array.moduleCatalogCategoryPropertie.type_id == 3}
    
    <br />
    <br />
    
    <h3>Список полей</h3>
    
    <br />
    <br />
    <div class="main">
    	<table>
    		<thead>
    			<tr>
                    <td width="80%">Название</td>
                    <td width="20%">Действия</td>
    			</tr>
    		</thead>
    		<tbody>
                {foreach from=$array.propertiearraylist key=date item=array_field name=propertiearraylist}
                <tr {if $smarty.foreach.propertiearraylist.index % 2 == 1}class="f"{/if}>
                    <td>{$array_field.array_value}</td>
                    <td>
                        <a href="{$SITE_URL}module-catalog-cats-propertie-array_form.php?catalog_id={$array.catalog_id}&category_id={$array.category_id}&propertie_id={$array.propertie_id}&array_id={$array_field.array_id}">Редактировать</a> /
                        <a href="javascript:;" onclick="deleteMe('{$SITE_URL}module-catalog-cats-propertie_form.php?catalog_id={$array.catalog_id}&category_id={$array.category_id}&propertie_id={$array.propertie_id}&_array_id={$array_field.array_id}','Вы уверены, что хотите удалить поле?');">Удалить</a>
                    </td>
                </tr>
                {/foreach}        
            </tbody>
        </table>
    </div>   
    
    
    {/if}


</div>

{include file="footer_admin.tpl"}