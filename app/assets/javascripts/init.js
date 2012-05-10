/**
*
*   GO!!!!
*/
$(function(){
	$("ul.tabs").tabs("div.panes > div",{history: true});
	$(".scrollable").scrollable({circular:true}).navigator().autoscroll(8000);
	
	if ( !$.cookie('video') ){
	  openOverlay();
	  $.cookie('video', true);
	}
	
	function openOverlay(){
	  $("#overlay-trigger").overlay({
  	  // some mask tweaks suitable for facebox-looking dialogs
      mask: {
        // you might also consider a "transparent" color for the mask
        color: '#aaa',

        // load mask a little faster
        loadSpeed: 200,

        // very transparent
        opacity: 0.6
      },
  	  load: true,
  	  closeOnClick: true,
  	  closeOnEsc: true,

  	  onClose: function(e){
  	    var $overlay = e.currentTarget.getOverlay(),
  	        $iframe = $overlay.find('iframe').remove().appendTo($overlay);
  	  }
  	});
	}
});