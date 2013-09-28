{include file="header_admin.tpl" title="Шаблон редактирование/добавление"}

<div class="layout">
    
    <h3>Шаблон редактирование/добавление</h3>
    
	<form name="form" method="post" action="">
    <input type="hidden" name="template_id" value="{$array.template_id}" />
    <fieldset>
    
	<label class="label">Название</label><input type="text" name="Name" value="{if isset($array.POST.Name)}{$array.POST.Name}{else}{$array.template.Name}{/if}"{if isset($array.errors.Name_error)} class="error"{/if} />
	<div class="clearfix"></div>     
    
	<label class="label">Физический путь</label><input type="text" name="Path" value="{if isset($array.POST.Path)}{$array.POST.Path}{else}{$array.template.Path}{/if}"{if isset($array.errors.Path_error)} class="error"{/if} />
	<div class="clearfix"></div>
    
	<label class="label">Изображение</label><input type="file" name="Image" />
	<div class="clearfix"></div>    
    
	<div class="buttons">        
		<input type="submit" name="b1" value="Сохранить" />
        <input type="submit" name="b2" value="Применить" />
	</div>       
    
    </fieldset>
	</form>    
    

</div>

{include file="footer_admin.tpl"}