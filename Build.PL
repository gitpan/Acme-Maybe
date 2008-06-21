use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Acme::Maybe',
    license             => 'perl',
    dist_author         => 'Max Afonov <maxa@cpan.org>',
    dist_version_from   => 'lib/Acme/Maybe.pm',
    build_requires => {
        'Test::More' => 0,
    },
    add_to_cleanup      => [ 'Acme-Maybe-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
