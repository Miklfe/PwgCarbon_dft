/*
 * jQuery Mega Drop Down Menu script by Soh Tanaka
 * http://www.sohtanaka.com/web-design/mega-drop-downs-w-css-jquery/
 * 
 */
$(document).ready(function(){
		
	function megaHoverOver(){
		$(this).find(".sub").stop().fadeTo('slow', 1).show();
			
	}
	
	function megaHoverOut(){
	 $(this).find(".sub").stop().fadeTo('slow', 0, function() {
		  $(this).hide();
	  });
	}
	

	var configSub = {
		 sensitivity: 2,		// number = sensitivity threshold (must be 1 or higher)    
		 interval: 0, 			// number = milliseconds for onMouseOver polling interval    
		 over: megaHoverOver,   // function = onMouseOver callback (REQUIRED)    
		 timeout: 0, 			// number = milliseconds delay before onMouseOut    
		 out: megaHoverOut 		// function = onMouseOut callback (REQUIRED)    
	};

	$("ul#topnav li .sub").css({'opacity':'0'});
	$("ul#topnav li").hoverIntent(configSub);
	
	var configSwitch = {
		 sensitivity: 2,		// number = sensitivity threshold (must be 1 or higher)    
		 interval: 0, 			// number = milliseconds for onMouseOver polling interval    
		 over: switchBoxOver,   // function = onMouseOver callback (REQUIRED)    
		 timeout: 0, 			// number = milliseconds delay before onMouseOut    
		 out: switchBoxOut 		// function = onMouseOut callback (REQUIRED)    
	};

	function switchBoxOver(){
		$(this).find(".switchBox").stop().fadeTo('slow', 1).show();
			
	}
	
	function switchBoxOut(){
	 $(this).find(".switchBox").stop().fadeTo('slow', 0, function() {
		  $(this).hide();
	  });
	}
	$("ul.categoryActions li").hoverIntent(configSwitch);

	
	// Delete the border for the last li of the submenu
	$("ul#topnav .sub ul li:last-child a").css("border", "none");

	/*other menubar script*/
	//open form login menu
	$(".cl_wrapper").next("div").hide();

	
	$(".cl_wrapper").hover(function(){
	
		if($(this).next("div").is(":hidden")){
			$(this).next("div").fadeTo('fast', 1);
			$(this).addClass('activate');
			$(this).next("div").attr(":visible")
		}
	});
		
	
	$(".cl_wrapper").click(function(){
		if($(this).next("div").is(":visible")){
		$(this).next("div").fadeTo('slow', 0, function(){$(this).hide()});
		$(this).removeClass('activate'); 
		$(this).next("div").attr(":hidden")
		}
	});

	$(".close").click(function(){
		if($("#loger").is(":visible")){
			$("#loger").fadeTo('fast', 0, function(){$(this).hide()});
			$(".cl_wrapper").removeClass('activate');
			$("#loger").attr(":hidden");
		}
	});
	
	$(".cc_wrapper").click(function(){
		if($(this).next("div").is(":visible")){
			$(this).next("div").fadeTo('slow', 0, function(){$(this).hide()});
			$(this).removeClass('activate'); 
			$(this).next("div").attr(":hidden")
		}
	});
	
	$(".cc_wrapper").click(function(){
		if($(this).next("div").is(":hidden")){
			$(this).next("div").fadeTo('fast', 1);
			$(this).addClass('activate');
			$(this).next("div").attr(":visible")
		}
	});
	
		$(".close").click(function(){
		if($("#loger").is(":visible")){
			$("#loger").fadeTo('fast', 0, function(){$(this).hide()});
			$(".cc_wrapper").removeClass('activate');
			$("#loger").attr(":hidden");
		}
	});
	
	
	


	// make column menubar_categorie
	$('.mcol').makeacolumnlists({cols:4, colWidth:155, equalHeight: true, startN: 1});
});