<?php
/*
Theme Name: PwgCarbon_dft
Version: 1.0.1
Description: theme PwgCarbon_dft pour Piwigo.
Theme URI:http://fr.piwigo.org/ext/extension_view.php?eid=639
Author: Miklfe
Author URI: 
*/



load_language('theme.lang', PHPWG_THEMES_PATH.'PwgCarbon_dft/');

				
$themeconf = array(
	'name'						=> 'PwgCarbon_dft',
	'parent'					=> 'default',
	'load_parent_css' 			=> true,
	'load_parent_local_head'	=> false,
	'local_head'  				=> 'local_head.tpl',
	'icon_dir' 					=> 'themes/PwgCarbon_dft/icon/',
	);



add_event_handler('get_categories_menu_sql_where', 'mic_get_categories_menu_sql_where', EVENT_HANDLER_PRIORITY_NEUTRAL, 3 );

function mic_get_categories_menu_sql_where($where){	
	global $page;
		$where = '1';
	return $where;
}



  
  
?>