{include file="header.tpl" title="Registation"}

<header><div class="wrapper">
    <a class="logo" href="{$SITE_URL}"></a>
</div></header>
    
<section>
  <div class="wrapper">
    <div class="reg_form">
      <form name="fregistration" action="" method="post">
        <fieldset>
        
    	<label class="label">Login</label><input type="text" name="Login" value="{if isset($array.POST.Login)}{$array.POST.Login}{else}{$array.Login}{/if}"{if isset($array.errors.Login_error)} class="error"{/if} />
    	<div class="clearfix"></div>
        
    	<label class="label">Password</label><input type="password" name="Password" value=""{if isset($array.errors.Password_error)} class="error"{/if} />
    	<div class="clearfix"></div>
        
    	<label class="label">Password_retype</label><input type="password" name="Password_retype" value=""{if isset($array.errors.Password_error)} class="error"{/if} />
    	<div class="clearfix"></div>
        
    	<label class="label">Email</label><input type="text" name="Email" value="{if isset($array.POST.Email)}{$array.POST.Email}{else}{$array.Email}{/if}"{if isset($array.errors.Email_error)} class="error"{/if} />
    	<div class="clearfix"></div>
        
    	<label class="label">Messenger Type</label>
    	<div class="select">   
		<select name="MessengerTypeId">
        {if $array.post_event == 1}
            <option value="1"{if isset($array.POST.MessengerTypeId) && $array.POST.MessengerTypeId == 1} selected="selected"{/if}>ICQ</option>
            <option value="2"{if isset($array.POST.MessengerTypeId) && $array.POST.MessengerTypeId == 2} selected="selected"{/if}>MSN</option>
            <option value="3"{if isset($array.POST.MessengerTypeId) && $array.POST.MessengerTypeId == 3} selected="selected"{/if}>JABBER</option>
            <option value="4"{if isset($array.POST.MessengerTypeId) && $array.POST.MessengerTypeId == 4} selected="selected"{/if}>SKYPE</option>
        {else}
            <option value="1">ICQ</option>
            <option value="2">MSN</option>
            <option value="3">JABBER</option>
            <option value="4">SKYPE</option>            
        {/if}
		</select>    
        </div>
        <div class="clearfix"></div>
        
    	<label class="label">Messenger Contact</label><input type="text" name="MessengerContact" value="{if isset($array.POST.MessengerContact)}{$array.POST.MessengerContact}{else}{$array.MessengerContact}{/if}"{if isset($array.errors.MessengerContact_error)} class="error"{/if} />
    	<div class="clearfix"></div>                                              

    	<div class="buttons">
    		<input type="submit" name="b1" value="Register!" />
    	</div>                
        
        </fieldset>
      </form>
    </div>
  </div>
</section>

{include file="footer.tpl"}