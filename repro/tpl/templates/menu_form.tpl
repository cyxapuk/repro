{include file="header_admin.tpl" title="Навигация редактирование/добавление"}

<div class="layout">
    
    <h3>Навигация редактирование/добавление</h3>
    
	<form name="form" method="post" action="">
    <input type="hidden" name="menu_id" value="{$array.menu_id}" />
    <fieldset>
    
	<label class="label">Название</label><input type="text" name="Name" value="{if isset($array.POST.Name)}{$array.POST.Name}{else}{$array.menu.Name}{/if}"{if isset($array.errors.Name_error)} class="error"{/if} />
	<div class="clearfix"></div>
    
    {if $smarty.get.menu_id}
    <label class="label">Выбрать страницу</label>
	<div class="select">
        <select name="menu_page_id">
        <option value="0">Добавить страницу</option>            
        {foreach from=$array.pagelist key=key item=page}
            <option value="{$key}">{$page}</option>
        {/foreach}
        </select>   
    </div>
    <div class="clearfix"></div>    
    {/if}
    
	<div class="buttons">        
		<input type="submit" name="b1" value="Сохранить" />
        <input type="submit" name="b2" value="Применить" />
	</div>       
    
    </fieldset>
	</form>    
    
    {if $array.menupagelist}
    
    <br />
    <br />
    
    <h3>Список страниц</h3>
    
    <br />
    <br />
    <div class="main">
    	<table>
    		<thead>
    			<tr>
                    <td width="75%">Название</td>
                    <td width="5%">Порядок</td>
                    <td width="20%">Действия</td>
    			</tr>
    		</thead>
    		<tbody>
                {foreach from=$array.menupagelist key=key item=menu_page name=menupagelist}
                <tr {if $smarty.foreach.menupagelist.index % 2 == 1}class="f"{/if}>
                    <td>{$array.pagelist[$menu_page.PageId]}</td>
                    <td><a href="{$SITE_URL}menu_form.php?menu_id={$menu_page.MenuId}&menu_page_id={$menu_page.PageId}&__move_menu_page_id={$array.menupagelist[$key-1].PageId}" class="arrow_up"></a><a href="{$SITE_URL}menu_form.php?menu_id={$menu_page.MenuId}&menu_page_id={$menu_page.PageId}&__move_menu_page_id={$array.menupagelist[$key+1].PageId}" class="arrow_down"></a></td>
                    <td>
                        <a href="javascript:;" onclick="deleteMe('{$SITE_URL}menu_form.php?menu_id={$menu_page.MenuId}&_menu_page_id','Вы уверены, что хотите страницу?');">Удалить</a>
                    </td>
                </tr>
                {/foreach}        
            </tbody>
        </table>
    </div>   
    
    
    {/if}    
    

</div>

{include file="footer_admin.tpl"}