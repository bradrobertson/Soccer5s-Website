/**
*   @file visitor.js
*
*   A visitor basically sets an access time on each request
*   Lets our application know that a page has been refreshed
*
*/
!(function(app, undefined){
  
  /**
  *   @constructor
  *
  *   Object to set access time
  */
  function Visitor(expiry){
    // TODO This doesn't actually make sense in the constructor
    // should be methods to generate dates based on visit, not instantiation
    this.now = new Date;
    this.expires = new Date(this.now);
    // Generate expiry, defaults to 5 minutes
    this.expires.setMinutes( this.now.getMinutes() + (expiry || 5) );
  }
  
  /**
  *   Set the visited boolean
  *
  */
  Visitor.prototype.visit = function(){
    return $.cookie('visited', true, {expires: this.expires});
  };
  
  /**
  *   @return {Boolean}
  *
  *   Check if visit has been made
  *
  */
  Visitor.prototype.checkAccess = function(){
    return $.cookie('visited') == 'true';
  };
  
  app.Visitor = Visitor;
  
})(app);