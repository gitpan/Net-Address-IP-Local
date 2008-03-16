#
# Module::Build build script for Net::Address::IP::Local
#
# (C) 2005-2008 Julian Mehnle <julian@mehnle.net>
# $Id: Build.PL 19 2008-03-16 02:37:14Z julian $
#
###############################################################################

use Module::Build;

my $build = Module::Build->new(
    module_name     => 'Net::Address::IP::Local',
    dist_author     => 'Julian Mehnle <julian@mehnle.net>',
    license         => 'perl',
    requires        => {
        perl                => 0,
        Error               => 0,
        IO::Socket::INET    => 0
    },
    recommends      => {
        IO::Socket::INET6   => 0
    },
    create_makefile_pl
                    => 'passthrough',
    sign            => 1
);

$build->create_build_script();
