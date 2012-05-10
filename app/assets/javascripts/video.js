/**
*
*   Pop up an intro video when called
*
*/
!(function(){
  
  function playVideo(){
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

  	  onClose: stopVideo
  	});
	}
	
	function stopVideo(e){
    var $overlay = e.currentTarget.getOverlay(),
        $iframe = $overlay.find('iframe').remove();
	}
	
	app.playVideo = playVideo;
})();