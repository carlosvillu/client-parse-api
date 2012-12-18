ParseObject = require( './object' );

var Parse = function( app_key, rest_app_key )
{
  if( !app_key || !rest_app_key )
  {
    throw new Error( 'missing Key' );
  }

  this.app_key = app_key;
  this.rest_app_key = rest_app_key;
};

Parse.prototype.createInstance = function( type )
{
  var Klass,
      instance,
      instances = {
        ParseObject: ParseObject
      };

  Klass = instances[type];
  return new Klass( [this.app_key, this.rest_app_key].concat(Array.prototype.splice.call( arguments, 1 ) ) );
};

module.exports = Parse;
