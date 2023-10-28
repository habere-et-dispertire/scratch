#! /usr/bin/env raku;

my subset Question where .ends-with( ｢?｣ );

multi query ( Question $_ ) { ｢An English question｣ }
multi query ( Question $_ where .starts-with: ｢¿｣ ) is default { ｢A Spanish question｣  }

say query( 'Hello World?'  );
say query( '¿Hello World?' );

# An English question
# An English question
