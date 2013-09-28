{include file="header_admin.tpl" title="Настройки сайта"}

<div class="layout">
    
    <h3>Настройки вашего сайта</h3>
    
	<form name="form" method="post" action="">
    <fieldset>
    
	<label class="label">Название системное</label><input type="text" name="Name" value="{if isset($array.POST.Name)}{$array.POST.Name}{else}{$array.site.Name}{/if}"{if isset($array.errors.Name_error)} class="error"{/if}" />
	<div class="clearfix"></div>
    
    {if count($array.languagelist)>0}
    
    {foreach from=$array.languagelist key=key item=language}
	<label class="label">Название ({$language.Name})</label><input type="text" name="NameML[{$language.Id}][]" value="{$array.nameML[$language.Id]}" />
	<div class="clearfix"></div>    
    {/foreach}
    
    {/if}     
    
	<label class="label">Мета</label><textarea name="Meta">{$array.site.Meta}</textarea>
	<div class="clearfix"></div>
    
	<label class="label">Почта администратора</label><input type="text" name="Email" value="{if isset($array.POST.Email)}{$array.POST.Email}{else}{$array.site.Email}{/if}"{if isset($array.errors.Email_error)} class="error"{/if} />
	<div class="clearfix"></div>    
    
	<label class="label">Индексная страница</label>
	<div class="select">   
    <select name="PageId">            
        <option value="0">Выберите страницу</option>
        {foreach from=$array.pagelist key=key item=page}
            <option value="{$page.Id}"{if ($array.site.PageId == $page.Id)} selected="selected"{/if}>{$page.Name}</option>
        {/foreach}         
    </select>    
    </div>
    <div class="clearfix"></div>
    
	<label class="label">Язык поумолчанию</label>
	<div class="select">   
    <select name="LangId">            
        <option value="0">Выберите язык</option>
        {foreach from=$array.languagelist key=key item=language}
            <option value="{$language.Id}"{if ($array.site.LangId == $language.Id)} selected="selected"{/if}>{$language.Name}</option>
        {/foreach}        
    </select>    
    </div>
    <div class="clearfix"></div>            
    
	<label class="label">Алиасы</label>
	<div class="select">   
    <select name="Alias">            
    {if $array.post_event == 1}
        <option value="0"{if isset($array.POST.Alias) && $array.POST.Alias == 0} selected="selected"{/if}>Выкл</option>
        <option value="1"{if isset($array.POST.Alias) && $array.POST.Alias == 1} selected="selected"{/if}>Вкл</option>
    {else}
        <option value="0"{if $array.site.Alias == 0} selected="selected"{/if}>Выкл</option>
        <option value="1"{if $array.site.Alias == 1} selected="selected"{/if}>Вкл</option>            
    {/if}
    </select>   
    </div>
    <div class="clearfix"></div>
    
	<label class="label">Состояние</label>
	<div class="select">   
    <select name="Status">            
    {if $array.post_event == 1}
        <option value="0"{if isset($array.POST.Status) && $array.POST.Status == 0} selected="selected"{/if}>Выкл</option>
        <option value="1"{if isset($array.POST.Status) && $array.POST.Status == 1} selected="selected"{/if}>Вкл</option>
    {else}
        <option value="0"{if $array.site.Status == 0} selected="selected"{/if}>Выкл</option>
        <option value="1"{if $array.site.Status == 1} selected="selected"{/if}>Вкл</option>            
    {/if}
    </select>   
    </div>
    <div class="clearfix"></div>
    
	<div class="buttons">
		<input type="submit" name="b1" value="Сохранить" />
	</div>       
    
    </fieldset>
	</form>    
    

</div>

{include file="footer_admin.tpl"}