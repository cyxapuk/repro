{include file="header.tpl" title="Login"}

<header><div class="wrapper">
    <a class="logo" href="{$SITE_URL}"></a>
</div></header>

<section>
  <div class="wrapper">
    <div class="login_form">
      <form name="fauth" action="" method="post">
        <fieldset>
          <p>
            <label>Login:</label>
            <input type="text" name="login" value="{$array.POST.login}">
          </p>
          <p>
            <label>Password:</label>
            <input type="password" name="password" value="">
          </p>
          <p align="center"> <a href="{$SITE_URL}registration.php" class="green">Register</a> | <a href="javascript:;" onclick="alert('Contact to admin@pornsharia.com')" class="green">Forgot your password?</a> </p>
          <p>
            <input type="submit" value="Enter">
          </p>
        </fieldset>
      </form>
    </div>
    {if isset($array.errors.Request_error)}
    <p class="login_error"><b>Incorrect username or password!</b></p>
    {/if}
    
    {if isset($array.errors.Access_error)}
    <p class="login_error"><b>Incorrect username or password!</b></p>
    {/if}      
  </div>
</section>

{include file="footer.tpl"}