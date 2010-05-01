
use strict;
use warnings;

 BEGIN { require 5.10.0; } 

use ExtUtils::MakeMaker 6.31;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t'
                                 },
                       'NAME' => 'Dist::Zilla::PluginBundle::AVAR',
                       'DISTNAME' => 'Dist-Zilla-PluginBundle-AVAR',
                       'CONFIGURE_REQUIRES' => {
                                                 'ExtUtils::MakeMaker' => '6.31'
                                               },
                       'AUTHOR' => 'Ævar Arnfjörð Bjarmason <avar@cpan.org>',
                       'BUILD_REQUIRES' => {
                                             'Test::More' => '0',
                                             'File::Find' => '0',
                                             'File::Temp' => '0'
                                           },
                       'ABSTRACT' => 'Use L<Dist::Zilla> like AVAR does',
                       'EXE_FILES' => [],
                       'VERSION' => '0.17',
                       'PREREQ_PM' => {
                                        'Dist::Zilla::Role::PluginBundle' => '0',
                                        'Dist::Zilla::Plugin::CompileTests' => '0',
                                        'Dist::Zilla::Plugin::MakeMaker::Awesome' => '0',
                                        'Moose::Autobox' => '0',
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


unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM}; 
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod}; 
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



