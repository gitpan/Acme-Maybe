#!perl -T

use Test::More tests => 1;

BEGIN {
	use_ok( 'Acme::Maybe' );
}

diag( "Testing Acme::Maybe $Acme::Maybe::VERSION, Perl $], $^X" );
