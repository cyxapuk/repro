{include file="header_admin.tpl" title="Список характеристик"}

<div class="layout">
    
    <h3>Список характеристик</h3>
    
    <br />
    <br />
    <div class="main">
    	<table>
    		<thead>
    			<tr>
                    <td width="70%">Название</td>
                    <td width="10%">Тип</td>
                    <td width="20%">Действия</td>
    			</tr>
    		</thead>
    		<tbody>
                {foreach from=$array.propertielist key=date item=propertie name=propertielist}
                <tr {if $smarty.foreach.propertielist.index % 2 == 1}class="f"{/if}>
                    <td>{$propertie.propertie_title}</td>
                    <td>{$array.moduleCatalogType[$propertie.type_id]}</td>
                    <td>
                        <a href="{$SITE_URL}module-catalog-objects-propertie_form.php?catalog_id={$propertie.catalog_id}&category_id={$propertie.category_id}&object_id={$array.object_id}&propertie_id={$propertie.propertie_id}">Редактировать</a> /
                        <a href="javascript:;" onclick="deleteMe('{$SITE_URL}module-catalog-objects-properties.php?catalog_id={$propertie.catalog_id}&category_id={$propertie.category_id}&object_id={$array.object_id}&_propertie_id={$propertie.propertie_id}','Вы уверены, что хотите удалить характеристику?');">Удалить</a>
                    </td>
                </tr>
                {/foreach}        
            </tbody>
        </table>
    </div>

</div>

{include file="footer_admin.tpl"}