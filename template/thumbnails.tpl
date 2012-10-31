{if !empty($thumbnails)}{strip}
{combine_script id='jquery.ajaxmanager' path='themes/default/js/plugins/jquery.ajaxmanager.js' load='footer'}
{combine_script id='thumbnails.loader' path='themes/default/js/thumbnails.loader.js' require='jquery.ajaxmanager' load='footer'}
{*define_derivative name='derivative_params' width=160 height=90 crop=true*}
{html_style}
{*Set some sizes according to maximum thumbnail width and height*}

.thumbnails .wrap2{ldelim}
	height: {$derivative_params->max_height()+3}px;
}
{if $derivative_params->max_width() > 600}
.thumbLegend {ldelim}font-size: 130%}
{else}
{if $derivative_params->max_width() > 400}
.thumbLegend {ldelim}font-size: 110%}
{else}
.thumbLegend {ldelim}font-size: 90%}
{/if}
{/if}
{/html_style}



{foreach from=$thumbnails item=thumbnail}
{assign var=derivative value=$pwg->derivative($derivative_params, $thumbnail.src_image)}
	<li>
	<span class="wrap1">
		<span class="wrap2">
		<div class="thumbnail">		
			<a href="{$thumbnail.URL}">
				<img class="thumbnail" src="{$derivative->get_url()}" alt="{$thumbnail.TN_ALT}" title="{$thumbnail.TN_TITLE}">
				{footer_script}{literal}
				jQuery(function($) {
					$(".thumbnail").reflect({height:0.3,opacity:0.3});
				});
				{/literal}{/footer_script}
			</a>
			{if $SHOW_THUMBNAIL_CAPTION }
			<div class=description>
				<span class="thumbLegend">
						<span class="thumbName">{$thumbnail.NAME}</span>
						{if !empty($thumbnail.icon_ts)}
							<img title="{$thumbnail.icon_ts.TITLE}" src="{$ROOT_URL}{$themeconf.icon_dir}/recent.png" alt="(!)">
						{/if}
					{if isset($thumbnail.NB_COMMENTS)}
						<span class="{if 0==$thumbnail.NB_COMMENTS}zero {/if}nb-comments">
							<br>
							{$pwg->l10n_dec('%d comment', '%d comments',$thumbnail.NB_COMMENTS)}
						</span>
					{/if}
					{if isset($thumbnail.NB_HITS)}
						<span class="{if 0==$thumbnail.NB_HITS}zero {/if}nb-hits">
							<br>
							{$pwg->l10n_dec('%d hit', '%d hits',$thumbnail.NB_HITS)}
						</span>
					{/if}
				</span>
			</div>
			</div>				
		</span>
		{/if}
	</span>
	</li>

{/foreach}{/strip}
{/if}
