
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
                       'ABSTRACT' => 'Use L<Dist::Zilla> like AVAR does',
                       'EXE_FILES' => [],
                       'VERSION' => '0.07',
                       'PREREQ_PM' => {
                                        'Dist::Zilla::Role::PluginBundle' => '0',
                                        'Dist::Zilla::Plugin::AutoPrereq' => '0',
                                        'Moose::Autobox' => '0',
                                        'Test::More' => '0',
                                        'Dist::Zilla::PluginBundle::Filter' => '0',
                                        'Dist::Zilla::Plugin::VersionFromPrev' => '0',
                                        'Dist::Zilla::Plugin::ReadmeFromPod' => '0.06',
                                        'Dist::Zilla' => '1.092990',
                                        'Dist::Zilla::Plugin::MetaNoIndex' => '0',
                                        'Dist::Zilla::PluginBundle::Git' => '0',
                                        'Moose' => '0'
                                      },
                       'LICENSE' => 'perl'
                     );


delete $WriteMakefileArgs{LICENSE}
  unless eval { ExtUtils::MakeMaker->VERSION(6.31) };

WriteMakefile(%WriteMakefileArgs);



