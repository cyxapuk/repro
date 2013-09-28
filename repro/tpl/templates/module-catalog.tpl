{include file="header_admin.tpl" title="Список каталогов"}

<div class="layout">
    
    <h3>Список каталогов</h3>
    
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
                {foreach from=$array.cataloglist key=date item=catalog name=cataloglist}
                <tr {if $smarty.foreach.cataloglist.index % 2 == 1}class="f"{/if}>
                    <td><a href="{$SITE_URL}module-catalog-cats.php?catalog_id={$catalog.catalog_id}">{$catalog.catalog_title}</a></td>
                    <td>
                        <a href="{$SITE_URL}module-catalog_form.php?catalog_id={$catalog.catalog_id}">Редактировать</a> /
                        <a href="javascript:;" onclick="deleteMe('{$SITE_URL}module-catalog.php?catalog_id={$catalog.catalog_id}&_catalog_id={$catalog.catalog_id}','Вы уверены, что хотите удалить каталог?');">Удалить</a>
                    </td>
                </tr>
                {/foreach}        
            </tbody>
        </table>
    </div>

</div>

{include file="footer_admin.tpl"}