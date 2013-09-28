{include file="header_admin.tpl" title="Список языков"}

<div class="layout">
    
    <h3>Список языков</h3>
    
    <br />
    <br />
    <div class="main">
    	<table>
    		<thead>
    			<tr>
                    <td width="40%">Название</td>
                    <td width="20%">Аббревиатура</td>
                    <td width="20%">Состояние</td>
                    <td width="20%">Действия</td>
    			</tr>
    		</thead>
    		<tbody>
                {foreach from=$array.languagelist key=date item=language name=languagelist}
                <tr {if $smarty.foreach.languagelist.index % 2 == 1}class="f"{/if}>
                    <td>{$language.Name}</td>
                    <td>{$language.Abr}</td>
                    <td>{if $language.Status == 0}<b class="error">Выключен</b>{elseif $language.Status == 1}<b>Включен</b>{/if}</td>
                    <td>
                        <a href="{$SITE_URL}language_form.php?language_id={$language.Id}">Редактировать</a> /
                        <a href="javascript:;" onclick="deleteMe('{$SITE_URL}language.php?_language_id={$language.Id}','Вы уверены, что хотите удалить язык?');">Удалить</a>
                    </td>
                </tr>
                {/foreach}        
            </tbody>
        </table>
    </div>

</div>

{include file="footer_admin.tpl"}