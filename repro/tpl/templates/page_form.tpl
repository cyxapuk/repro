{include file="header_admin.tpl" title="Страница редактирование/добавление"}

<div class="layout">
    
    <h3>Страница редактирование/добавление</h3>
    
	<form name="form" method="post" action="">
    <input type="hidden" name="page_id" value="{$array.page_id}" />
    <fieldset>
    
	<label class="label">Название</label><input type="text" name="Name" value="{if isset($array.POST.Name)}{$array.POST.Name}{else}{$array.page.Name}{/if}"{if isset($array.errors.Name_error)} class="error"{/if} />
	<div class="clearfix"></div>
    
    {if count($array.languagelist)>0}
    
    {foreach from=$array.languagelist key=key item=language}
	<label class="label">Название ({$language.Name})</label><input type="text" name="NameML[{$language.Id}][]" value="{$array.nameML[$language.Id]}" />
	<div class="clearfix"></div>    
    {/foreach}
    
    {/if}     
    
	<label class="label">Мета</label><textarea name="Meta">{$array.page.Meta}</textarea>
	<div class="clearfix"></div>         
    
	<label class="label">Алиас</label><input type="text" name="Alias" value="{if isset($array.POST.Alias)}{$array.POST.Alias}{else}{$array.page.Alias}{/if}"{if isset($array.errors.Alias_error)} class="error"{/if} />
	<div class="clearfix"></div>
    
	<label class="label">Ссылка</label><input type="text" name="Link" value="{if isset($array.POST.Link)}{$array.POST.Link}{else}{$array.page.Link}{/if}"{if isset($array.errors.Link_error)} class="error"{/if} />
	<div class="clearfix"></div>    
    
	<label class="label">Состояние</label>
	<div class="select">   
    <select name="Status">            
    {if $array.post_event == 1}
        <option value="0"{if isset($array.POST.Status) && $array.POST.Status == 0} selected="selected"{/if}>Выкл</option>
        <option value="1"{if isset($array.POST.Status) && $array.POST.Status == 1} selected="selected"{/if}>Вкл</option>
    {else}
        <option value="0"{if $array.page.Status == 0} selected="selected"{/if}>Выкл</option>
        <option value="1"{if $array.page.Status == 1} selected="selected"{/if}>Вкл</option>            
    {/if}
    </select>   
    </div>
    <div class="clearfix"></div>
    
	<label class="label">Шаблон</label>
	<div class="select">   
    <select name="TemplateId">            
    <option value="0">Выберите шаблон</option>
    {foreach from=$array.templatelist key=key item=template}
        <option value="{$template.Id}"{if ($array.page.TemplateId == $template.Id)} selected="selected"{/if}>{$template.Name}</option>
    {/foreach}
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