/**
*
*   Pop up an intro video when called
*
*/
!(function(app){
  
  /**
  *   @constructor
  *
  *   A video player
  */
  function Video(trigger){
    this.$trigger = trigger || $("#overlay-trigger");
  }
  
  /**
  *   Play the video
  *
  */
  Video.prototype.play = function(){
	  this.$trigger.overlay({
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

  	  onClose: this.stop
  	});
  	return this;
	};
	
	/**
	*   Stop the video
	*
	*/
	Video.prototype.stop = function(e){
	  var $overlay = e ? e.currentTarget.getOverlay() : $(this.$trigger.attr('rel'));
    
    // Stopping is just removing the iframe
    $overlay.find('iframe').remove();
    
    return this;
	};
	
	app.Video = Video;
	
})(app);