{include file="header_admin.tpl" title="Список шаблонов"}

<div class="layout">
    
    <h3>Список шаблонов</h3>
    
    <br />
    <br />
    <div class="main">
    	<table>
    		<thead>
    			<tr>
                    <td width="40%">Название</td>
                    <td width="40%">Физический путь</td>
                    <td width="20%">Действия</td>
    			</tr>
    		</thead>
    		<tbody>
                {foreach from=$array.templatelist key=date item=template name=templatelist}
                <tr {if $smarty.foreach.templatelist.index % 2 == 1}class="f"{/if}>
                    <td>{$template.Name}</td>
                    <td>{$template.Path}</td>
                    <td>
                        <a href="{$SITE_URL}template_form.php?template_id={$template.Id}">Редактировать</a> /
                        <a href="javascript:;" onclick="deleteMe('{$SITE_URL}template.php?_template_id={$template.Id}','Вы уверены, что хотите удалить шаблон?');">Удалить</a>
                    </td>
                </tr>
                {/foreach}        
            </tbody>
        </table>
    </div>

</div>

{include file="footer_admin.tpl"}