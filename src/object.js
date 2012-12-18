var ParseBase = require( './base' ),
    util = require( 'util' );

var ParseObject = function( args )
{
  var name = args.pop();

  if( !name )
  {
    throw new Error( 'Missing Object name' );
  }

  this.name = name;
  ParseBase.apply( this, args );
};

// Heredamos de la clase base
util.inherits( ParseObject, ParseBase );

module.exports = ParseObject;
