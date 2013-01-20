/**
*
*   GO!!!!
*/
$(function(){
	$(".scrollable").scrollable({circular:true}).navigator().autoscroll(8000);
  $(".fancybox").fancybox();

  // HACK
  if ($("#new.inquiries, #thank_you.inquiries").length) {
    $("ul.tabs").tabs("div.panes > div");
  }

	// welcome our user
	new app.Owner().welcome();
	// Set access time on visited
	new app.Visitor().visit();
});