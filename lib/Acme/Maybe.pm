package Acme::Maybe;

use warnings;
use strict;

use base qw/Exporter/;
our @EXPORT = qw/decide maybe/;

=head1 NAME

Acme::Maybe - Take away the pain of decision-making!

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

our $CEILING = 1000;

=head1 SYNOPSIS

This module lets the programmer offload some of the burden of
decision-making onto the computer's, uh, shoulders.

Here's how:

    use Acme::Maybe qw/maybe/;

    maybe {
       print "this may get executed. or not.\n";
    };

    # may print the above text... or not.

=head1 EXPORT

    decide
    maybe

=head1 FUNCTIONS

=head2 maybe

This function represents the main usable interface. It expects one
argument: a code block. It will use C<< decide >> to decide whether
the code block deserves to be executed or not.

=cut

sub maybe (&) {
  my $code = shift;
  return $code->() if decide() or return undef;
}

=head2 decide

The core decision-making capability center. This function actually
says "yea" or "nay".

=cut

sub decide {
  if (int(rand($CEILING)) %2 == 0) {
    return 1;
  } else {
    return undef;
  }
}

=head1 AUTHOR

Max Afonov, C<< <maxa at cpan.org> >>

=head1 BUGS

Please report any bugs or feature requests to C<maxa at cpan.org>,
although I don't think there should be any in such a simple module.

=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Acme::Maybe


You can also look for information at:

=over 4

=item * Search CPAN

L<http://search.cpan.org/dist/Acme-Maybe>

=back


=head1 ACKNOWLEDGEMENTS

Thanks to my employer, because this module has been developed on
company time. Cha-ching!

=head1 COPYRIGHT & LICENSE

Copyright 2008 Max Afonov, all rights reserved.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.


=cut

1;
