{include file="header_admin.tpl" title="Список страниц"}

<div class="layout">
    
    <h3>Список страниц</h3>
    
    <br />
    <br />
    <div class="main">
    	<table>
    		<thead>
    			<tr>
                    <td width="35%">Название</td>
                    <td width="10%">Алиас</td>
                    <td width="10%">Ссылка</td>
                    <td width="10%">Шаблон</td>
                    <td width="10%">Статус</td>
                    <td width="5%">Порядок</td>
                    <td width="20%">Действия</td>
    			</tr>
    		</thead>
    		<tbody>
                {foreach from=$array.pagelist key=page_index item=page name=pagelist}
                <tr {if $smarty.foreach.pagelist.index % 2 == 1}class="f"{/if}>
                    <td>{$page.Name}</td>
                    <td>{$page.Alias}</td>
                    <td>{$page.Link}</td>
                    <td>{if isset($array.templatelist[$page.TemplateId])}{$array.templatelist[$page.TemplateId]}{else}Не выбран{/if}</td>
                    <td>{if $page.Status == 0}<b class="error">Выключена</b>{elseif $page.Status == 1}<b>Включена</b>{/if}</td>
                    <td><a href="{$SITE_URL}page.php?page_id={$page.Id}&__move_page_id={$array.pagelist[$page_index-1].Id}" class="arrow_up"></a><a href="{$SITE_URL}page.php?page_id={$page.Id}&__move_page_id={$array.pagelist[$page_index+1].Id}" class="arrow_down"></a></td>
                    <td>
                        <a href="{$SITE_URL}page_form.php?page_id={$page.Id}">Редактировать</a> /
                        <a href="javascript:;" onclick="deleteMe('{$SITE_URL}page.php?_page_id={$page.Id}','Вы уверены, что хотите удалить страницу?');">Удалить</a>
                    </td>
                </tr>
                {/foreach}        
            </tbody>
        </table>
    </div>

</div>

{include file="footer_admin.tpl"}