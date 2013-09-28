{include file="header_admin.tpl" title="Список навигации"}

<div class="layout">
    
    <h3>Список навигации</h3>
    
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
                {foreach from=$array.menulist key=key item=menu name=menulist}
                <tr {if $smarty.foreach.menulist.index % 2 == 1}class="f"{/if}>
                    <td>{$menu.Name}</td>
                    <td>
                        <a href="{$SITE_URL}menu_form.php?menu_id={$menu.Id}">Редактировать</a> /
                        <a href="javascript:;" onclick="deleteMe('{$SITE_URL}menu.php?_menu_id={$menu.Id}','Вы уверены, что хотите удалить навигацию?');">Удалить</a>
                    </td>
                </tr>
                {/foreach}        
            </tbody>
        </table>
    </div>

</div>

{include file="footer_admin.tpl"}