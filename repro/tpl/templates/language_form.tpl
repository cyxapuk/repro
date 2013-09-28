{include file="header_admin.tpl" title="Язык редактирование/добавление"}

<div class="layout">
    
    <h3>Язык редактирование/добавление</h3>
    
	<form name="form" method="post" action="">
    <input type="hidden" name="language_id" value="{$array.language_id}" />
    <fieldset>
    
	<label class="label">Название</label><input type="text" name="Name" value="{if isset($array.POST.Name)}{$array.POST.Name}{else}{$array.language.Name}{/if}"{if isset($array.errors.Name_error)} class="error"{/if} />
	<div class="clearfix"></div>     
    
	<label class="label">Аббревиартура</label><input type="text" name="Abr" value="{if isset($array.POST.Abr)}{$array.POST.Abr}{else}{$array.language.Abr}{/if}"{if isset($array.errors.Abr_error)} class="error"{/if} />
	<div class="clearfix"></div>
    
	<label class="label">Состояние</label>
	<div class="select">   
    <select name="Status">            
    {if $array.post_event == 1}
        <option value="0"{if isset($array.POST.Status) && $array.POST.Status == 0} selected="selected"{/if}>Выкл</option>
        <option value="1"{if isset($array.POST.Status) && $array.POST.Status == 1} selected="selected"{/if}>Вкл</option>
    {else}
        <option value="0"{if $array.language.Status == 0} selected="selected"{/if}>Выкл</option>
        <option value="1"{if $array.language.Status == 1} selected="selected"{/if}>Вкл</option>            
    {/if}
    </select>   
    </div>
    <div class="clearfix"></div>
    
	<div class="buttons">        
		<input type="submit" name="b1" value="Сохранить" />
        <input type="submit" name="b2" value="Применить" />
	</div>       
    
    </fieldset>
	</form>    
    

</div>

{include file="footer_admin.tpl"}