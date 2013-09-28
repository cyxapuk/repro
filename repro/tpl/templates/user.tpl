{include file="header_admin.tpl" title="Список пользователей"}

<div class="layout">
    
    <h3>Список пользователей</h3>
    
    <br />
    <br />
    <div class="main">
    	<table>
    		<thead>
    			<tr>
                    <td width="80%">Имя пользователя</td>
                    <td width="20%">Действия</td>
    			</tr>
    		</thead>
    		<tbody>
                {foreach from=$array.userlist key=key item=user name=userlist}
                <tr {if $smarty.foreach.userlist.index % 2 == 1}class="f"{/if}>
                    <td>{$user.Login}</td>
                    <td>
                        <a href="{$SITE_URL}user_form.php?user_id={$user.Id}">Редактировать</a> /
                        <a href="javascript:;" onclick="deleteMe('{$SITE_URL}user.php?_user_id={$user.Id}','Вы уверены, что хотите удалить пользователя?');">Удалить</a>
                    </td>
                </tr>
                {/foreach}        
            </tbody>
        </table>
    </div>

</div>

{include file="footer_admin.tpl"}