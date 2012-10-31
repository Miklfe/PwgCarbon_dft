{if isset($U_LOGIN)}
<li class="liSub">
	<span class="cl_wrapper">{'Identification'|@translate}</span> 
		<div id="loger">
			<div class="close">
			</div> 
						
			<form method="post" action="{$U_LOGIN}" id="quickconnect">
			<div id="log">
			<div>
			<label for="username">{'Username'|@translate}</label><br>
			<input type="text" autocomplete="{if ($PwgCarbon.menuident)==1}off{else}on{/if}" name="username" id="username" value="" style="width:100%">
			</div>
			
			<div>
			<label for="password">{'Password'|@translate}</label>
			<br>
			<input type="password" name="password" id="password" style="width:100%">
			</div>
			
			{if $AUTHORIZE_REMEMBERING}
			<div><label for="remember_me">
			{'Auto login'|@translate}
			<input type="checkbox" name="remember_me" id="remember_me" value="1">
			</label>
			{/if}
			</div>
			<div id="go">
			<input type="hidden" name="redirect" value="{$smarty.server.REQUEST_URI|@urlencode}">
			<input class="submit" type="submit" name="login" value="{'Login'|@translate}">
			</div>
			</div>
			<ul>
				{if isset($U_REGISTER)}
				<li><a href="{$U_REGISTER}" title="{'Create a new account'|@translate}" rel="nofollow">{'Register'|@translate}</a></li>
				{/if}

				<li><a href="{$U_LOST_PASSWORD}" title="{'Forgot your password?'|@translate}" rel="nofollow">{'Forgot your password?'|@translate}</a></li>
			</ul>

			

			</form>
		</div>
</li>
	
	{else}
	
<li class="liSub">

<span class="dd_wrapper">{'Identification'|@translate}</span>
					<div style="opacity: 0; display: none;" class="sub">

	{if isset($USERNAME)}
	<p>{'Hello'|@translate}&nbsp;{$USERNAME}&nbsp;!</p>
	{/if}

	<ul>
	{if isset($U_REGISTER)}
	<li><a href="{$U_REGISTER}" title="{'Create a new account'|@translate}" rel="nofollow">{'Register'|@translate}</a></li>
	{/if}

	{if isset($U_LOGIN)}
	<li><a href="{$U_LOGIN}" rel="nofollow">{'Login'|@translate}</a></li>
	{/if}

	{if isset($U_LOGOUT)}
	<li><a href="{$U_LOGOUT}">{'Logout'|@translate}</a></li>
	{/if}

	{if isset($U_PROFILE)}
	<li><a href="{$U_PROFILE}" title="{'customize the appareance of the gallery'|@translate}">{'Customize'|@translate}</a></li>
	{/if}

	{if isset($U_ADMIN)}
	<li><a href="{$U_ADMIN}" title="{'available for administrators only'|@translate}">{'Administration'|@translate}</a></li>
	{/if}
	</ul>
</li>
	{/if}
