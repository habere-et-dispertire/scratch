#! /usr/bin/env raku

use v6.e.PREVIEW;

sub is-whatever (
    $n,
#
    @check = ( 2 .. 100_000 ).snip( * < $n )
) {
    say @check;
}

say is-whatever( 100_000 );
