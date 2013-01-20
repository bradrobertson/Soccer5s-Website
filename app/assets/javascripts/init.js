/**
*
*   GO!!!!
*/
$(function(){
	$(".scrollable").scrollable({circular:true}).navigator().autoscroll(8000);
  $(".fancybox").fancybox();

	// welcome our user
	new app.Owner().welcome();
	// Set access time on visited
	new app.Visitor().visit();
});