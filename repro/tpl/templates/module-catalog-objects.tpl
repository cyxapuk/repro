{include file="header_admin.tpl" title="Список объектов"}

<div class="layout">
    
    <h3>Список объектов</h3>
    
    <br />
    <br />
    <div class="main">
    	<table class="catalog">
    		<thead>
    			<tr>
                    <td width="75%">Название</td>
                    <td width="5%">Порядок</td>
                    <td width="20%">Действия</td>
    			</tr>
    		</thead>
            <tbody>
            {foreach from=$array.objectlist key=key item=obj name=objectlist}
            <tr {if $smarty.foreach.objectlist.index % 2 == 1}class="f"{/if}>
                <td>{$obj.object_title}</td>
                <td><a href="{$SITE_URL}module-catalog-objects.php?catalog_id={$obj.catalog_id}&category_id={$obj.category_id}&object_id={$obj.object_id}&__move_object_id={$array.objectlist[$key-1].object_id}" class="arrow_up"></a><a href="{$SITE_URL}module-catalog-objects.php?catalog_id={$obj.catalog_id}&category_id={$obj.category_id}&object_id={$obj.object_id}&__move_object_id={$array.objectlist[$key+1].object_id}" class="arrow_down"></a></td>
                <td>
                    <a href="{$SITE_URL}module-catalog-objects_form.php?catalog_id={$obj.catalog_id}&category_id={$obj.category_id}&object_id={$obj.object_id}">Редактировать</a> /                    
                    <a href="javascript:;" onclick="deleteMe('{$SITE_URL}module-catalog-objects.php?catalog_id={$obj.catalog_id}&category_id={$obj.category_id}&object_id={$obj.object_id}&_object_id={$obj.object_id}','Вы уверены, что хотите удалить объект?');">Удалить</a>
                </td>
            </tr>
            {/foreach}   
            </tbody>
        </table>
    </div>

</div>

{include file="footer_admin.tpl"}