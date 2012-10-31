{html_style}

{if $derivative_params->max_width() > 440}
.content UL.thumbnailCategories LI {ldelim}	width:100%; }  
.illustration {ldelim} margin-left: auto;
	margin-right: auto; display: table; float: none;}
{else}
{if $derivative_params->max_width() > 290}
.content UL.thumbnailCategories LI {ldelim}	width:49.7%;}  
.thumbnailCategory{ldelim}min-height: {$derivative_params->max_height()*1.33}px;
width:{$derivative_params->max_width()+5}px;}

{else}
.content UL.thumbnailCategories LI {ldelim}	width:33.2%; }   
{/if}
{/if}
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



<ul class="thumbnailCategories">
{foreach from=$category_thumbnails item=cat name=cat_loop}
	<li class="{if $smarty.foreach.comment_loop.index is odd}odd{else}even{/if}">
		<div class="thumbnailCategory">
			<div class="illustration">
			<a href="{$cat.URL}">
				
				<img class="thumbnail" src="{$pwg->derivative_url($derivative_params, $cat.representative.src_image)}" alt="{$cat.TN_ALT}" title="{$cat.NAME|@replace:'"':' '|@strip_tags:false} - {'display this album'|@translate}">
				{footer_script}{literal}
				jQuery(function($) {
					$(".thumbnail").reflect({height:0.3,opacity:0.3});
				});
				{/literal}{/footer_script}
			</a>
									<div class="description">
			<span class="thumbLegend">
				<h3>
					<a href="{$cat.URL}">{$cat.NAME}</a>
					{if !empty($cat.icon_ts)}
					<img title="{$cat.icon_ts.TITLE}" src="{$ROOT_URL}{$themeconf.icon_dir}/recent{if $cat.icon_ts.IS_CHILD_DATE}_by_child{/if}.png" alt="(!)">
					{/if}
				</h3>
				
				{if isset($cat.INFO_DATES) }
				<p class="dates">{$cat.INFO_DATES}</p>
				{/if}
				<p class="Nb_images">{$cat.CAPTION_NB_IMAGES}</p>
				{if not empty($cat.DESCRIPTION)}
				<p>{$cat.DESCRIPTION}</p>
				{/if}
				
			</span>
			</div>

			

			
			</div>
		</div>
	</li>
{/foreach}
</ul>
