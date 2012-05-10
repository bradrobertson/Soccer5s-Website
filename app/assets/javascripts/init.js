/**
*
*   GO!!!!
*/
$(function(){
	$("ul.tabs").tabs("div.panes > div",{history: true});
	$(".scrollable").scrollable({circular:true}).navigator().autoscroll(8000);
});