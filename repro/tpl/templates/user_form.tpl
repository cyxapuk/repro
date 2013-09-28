{include file="header_admin.tpl" title="Пользователь редактирование/добавление"}

<div class="layout">
    
    <h3>Пользователь редактирование/добавление</h3>
    
	<form name="form" method="post" action="">
    <input type="hidden" name="user_id" value="{$array.user_id}" />
    <fieldset>
    
	<label class="label">Имя пользователя</label><input type="text" name="Login" value="{if isset($array.POST.Login)}{$array.POST.Login}{else}{$array.user.Login}{/if}"{if isset($array.errors.Login_error)} class="error"{/if} />
	<div class="clearfix"></div>     
    
	<label class="label">Пароль</label><input type="text" name="Password" value=""{if isset($array.errors.Password_error)} class="error"{/if} />
	<div class="clearfix"></div>
    
	<label class="label">Подтверждение пароля</label><input type="text" name="Password2" value=""{if isset($array.errors.Password2_error)} class="error"{/if} />
	<div class="clearfix"></div>    
    
	<label class="label">Состояние</label>
	<div class="select">   
    <select name="Status">            
    {if $array.post_event == 1}
        <option value="0"{if isset($array.POST.Status) && $array.POST.Status == 0} selected="selected"{/if}>Выкл</option>
        <option value="1"{if isset($array.POST.Status) && $array.POST.Status == 1} selected="selected"{/if}>Вкл</option>
    {else}
        <option value="0"{if $array.user.Status == 0} selected="selected"{/if}>Выкл</option>
        <option value="1"{if $array.user.Status == 1} selected="selected"{/if}>Вкл</option>            
    {/if}
    </select>   
    </div>
    <div class="clearfix"></div>
    
	<label class="label">Почта</label><input type="text" name="Email" value="{if isset($array.POST.Email)}{$array.POST.Email}{else}{$array.user.Email}{/if}"{if isset($array.errors.Email_error)} class="error"{/if} />
	<div class="clearfix"></div>    
    
	<div class="buttons">        
		<input type="submit" name="b1" value="Сохранить" />
        <input type="submit" name="b2" value="Применить" />
	</div>       
    
    </fieldset>
	</form>    
    

</div>

{include file="footer_admin.tpl"}