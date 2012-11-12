/**
*   @file owner.js
*
*   Controls ownership of our site
*   For now just checks whether video should be played and plays it
*
*/
!(function(app){

  /**
  *   @constructor
  *
  */
  function Owner(){

  }

  /**
  *   @return {Boolean}
  *
  *   Are we on the home page
  */
  Owner.prototype.home = function(){
    return !!(e = document.getElementById('home')) && e.nodeName == "BODY";
  };

  /**
  *   @return {Boolean}
  *
  *   Has our site been visited?
  */
  Owner.prototype.visited = function(){
    return new app.Visitor().checkAccess();
  };

  /**
  *   Welcome our user to the site if they haven't visited before
  *
  *
  */
  Owner.prototype.welcome = function(){
    if ( this.home() && !this.visited() ) {
      this.video = new app.Video().play();
    }
  };

  app.Owner = Owner;
})(app);