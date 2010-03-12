
use strict;
use warnings;

 BEGIN { require 5.10.0; } 

use ExtUtils::MakeMaker 6.11;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t'
                                 },
                       'NAME' => 'Dist::Zilla::PluginBundle::AVAR',
                       'DISTNAME' => 'Dist-Zilla-PluginBundle-AVAR',
                       'CONFIGURE_REQUIRES' => {
                                                 'ExtUtils::MakeMaker' => '6.11'
                                               },
                       'AUTHOR' => 'Ævar Arnfjörð Bjarmason <avar@cpan.org>',
                       'BUILD_REQUIRES' => {},
                       'ABSTRACT' => 'BeLike::AVAR when you build your dists',
                       'EXE_FILES' => [],
                       'VERSION' => '0.03',
                       'PREREQ_PM' => {
                                        'Dist::Zilla::Plugin::PodWeaver' => '3.092971',
                                        'Pod::Elemental::Transformer::List' => '0',
                                        'Dist::Zilla::Role::PluginBundle' => '0',
                                        'Dist::Zilla::Plugin::AutoPrereq' => '1.100130',
                                        'Dist::Zilla::Plugin::Repository' => '0',
                                        'Moose::Autobox' => '0',
                                        'Test::More' => '0',
                                        'Dist::Zilla::PluginBundle::Filter' => '0',
                                        'Dist::Zilla' => '1.092990',
                                        'Dist::Zilla::PluginBundle::Git' => '0',
                                        'Dist::Zilla::Plugin::TaskWeaver' => '0.093330',
                                        'Moose' => '0'
                                      },
                       'LICENSE' => 'perl'
                     );


delete $WriteMakefileArgs{LICENSE}
  unless eval { ExtUtils::MakeMaker->VERSION(6.31) };

WriteMakefile(%WriteMakefileArgs);



