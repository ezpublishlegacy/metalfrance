<div class="border-box">
<div class="border-tl"><div class="border-tr"><div class="border-tc"></div></div></div>
<div class="border-ml"><div class="border-mr"><div class="border-mc float-break">

<div class="attribute-header">
    <h1 class="mf-title mf-noicon">{"Oubli de mot de passe"|i18n( "extension/metalfrance/user" )}</h1>
</div>

<div class="user-forgotpassword mf-body">

    <div class="mf-top"></div>
    
	{if $link}
	<p>
	{"An email has been sent to the following address: %1. It contains a link you need to click so that we can confirm that the correct user has received the new password."|i18n('design/ezwebin/user/forgotpassword',,array($email))}
	</p>
	{else}
	   {if $wrong_email}
	   <div class="warning">
	   <h2>{"There is no registered user with that email address."|i18n('design/ezwebin/user/forgotpassword')}</h2>
	   </div>
	   {/if}
	   {if $generated}
	   <p>
	   {"Password was successfully generated and sent to: %1"|i18n('design/ezwebin/user/forgotpassword',,array($email))}
	   </p>
	   {else}
	      {if $wrong_key}
	      <div class="warning">
	      <h2>{"The key is invalid or has been used. "|i18n('design/ezwebin/user/forgotpassword')}</h2>
	      </div>
	      {else}
	      <form method="post" name="forgotpassword" action={"/user/forgotpassword/"|ezurl}>
	
	      <p>
	      {"If you have forgotten your password, enter your email address and we will create a new password and send it to you."|i18n('design/ezwebin/user/forgotpassword')}
	      </p>
	
	      <div class="block">
	      <label for="email">{"Email"|i18n('design/ezwebin/user/forgotpassword')} :</label>
	      <div class="labelbreak"></div>
	      <input class="halfbox" type="text" name="UserEmail" id="email" size="40" value="{$wrong_email|wash}" />
	      </div>
	
	      <div class="buttonblock">
	      <input class="button" type="submit" name="GenerateButton" value="{'Generate new password'|i18n('design/ezwebin/user/forgotpassword')}" />
	      </div>
	      </form>
	      {/if}
	   {/if}
	{/if}

</div>

</div></div></div>
<div class="border-bl"><div class="border-br"><div class="border-bc"></div></div></div>
</div>