/**
*		@file application.js
*		@author Brad Robertson <bradleyrobertson@gmail.com>
*		
*		Application javascript
*/
(function($){
	
	$(function(){
		$("ul.tabs").tabs("div.panes > div",{tabs:'li'});
		$(".scrollable").scrollable({circular:true}).navigator().autoscroll(5000);
	});
	
})(jQuery);