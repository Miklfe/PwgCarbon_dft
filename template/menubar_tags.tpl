<li class="liSub">

<span class="dd_wrapper">{'Related tags'|@translate}</span>
	<div class="sub" style="opacity: 0; display: none; " >

	<div id="menuTagCloud">
		{foreach from=$block->data item=tag}
		<span>
			<a class="tagLevel{$tag.level}"
			{if isset($tag.U_ADD)}
				href="{$tag.U_ADD}"
				title="{$pwg->l10n_dec('%d image is also linked to current tags', '%d images are also linked to current tags', $tag.counter)}"
				rel="nofollow"
				style= "color: black ; text-shadow: none; ">+
			{else}
				href="{$tag.URL}"
				title="{'See images linked to this tag only'|@translate}"
				style= "color: black ; text-shadow: none; ">
			{/if}
				{$tag.name}</a></span>
{* ABOVE there should be no space between text, </a> and </span> elements to avoid IE8 bug https://connect.microsoft.com/IE/feedback/ViewFeedback.aspx?FeedbackID=366567 *}
		{/foreach}
	</div>
</div>
</li>
