				</div> <!-- page_content2 -->
			</div> <!-- page_content1 -->
		</div> <!-- page_content -->			
	</div> <!--the_page -->		
					
			
			
			
			<div id="footer">
				

				<div id="copyright">
				
						{if isset($debug.TIME) }
							 {'Page generated in'|@translate} {$debug.TIME} ({$debug.NB_QUERIES} {'SQL queries in'|@translate} {$debug.SQL_TIME}) -
						{/if}

						{* Please, do not remove this copyright. If you really want to,
						  contact us on http://piwigo.org to find a solution on how
						  to show the origin of the script...*}

						{'Powered by'|@translate}
						<a href="{$PHPWG_URL}" class="Piwigo">
							<span class="Piwigo">Piwigo</span>
						</a>
						{$VERSION}
						{if isset($CONTACT_MAIL)}
							- {'Contact'|@translate}
							<a href="mailto:{$CONTACT_MAIL}?subject={'A comment on your site'|@translate|@escape:url}">{'Webmaster'|@translate}</a>
						{/if}
{get_combined_scripts load='footer'}
						{if isset($footer_elements)}
							{foreach from=$footer_elements item=v}
								{$v}
							{/foreach}
						{/if}

					
							{if isset($debug.QUERIES_LIST)}
								<div id="debug">
									{$debug.QUERIES_LIST}
								</div>
							{/if}
							
				
				</div> <!-- copyright -->
<div id="bg_th_right"></div>
			</div> <!-- footer -->


</body>
</html>

