
use strict;
use warnings;

use 5.010000;

use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "Use L<Dist::Zilla> like AVAR does",
  "AUTHOR" => "\303\206var Arnfj\303\266r\303\260 Bjarmason <avar\@cpan.org>",
  "BUILD_REQUIRES" => {
    "File::Find" => 0,
    "File::Temp" => 0,
    "Test::More" => 0,
    "strict" => 0
  },
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "Dist-Zilla-PluginBundle-AVAR",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "Dist::Zilla::PluginBundle::AVAR",
  "PREREQ_PM" => {
    "Dist::Zilla" => "4.300028",
    "Dist::Zilla::App" => 0,
    "Dist::Zilla::Chrome::Term" => 0,
    "Dist::Zilla::Dist::Builder" => 0,
    "Dist::Zilla::Plugin::Authority" => 0,
    "Dist::Zilla::Plugin::InstallRelease" => 0,
    "Dist::Zilla::Plugin::MakeMaker::Awesome" => 0,
    "Dist::Zilla::Plugin::MetaNoIndex" => 0,
    "Dist::Zilla::Plugin::ReadmeFromPod" => "0.06",
    "Dist::Zilla::Plugin::Test::Compile" => 0,
    "Dist::Zilla::PluginBundle::Filter" => 0,
    "Dist::Zilla::PluginBundle::Git" => "1.102810",
    "Dist::Zilla::Role::PluginBundle" => 0,
    "Git::Wrapper" => 0,
    "Moose" => 0,
    "Moose::Autobox" => 0,
    "Try::Tiny" => 0,
    "warnings" => 0
  },
  "VERSION" => "0.27",
  "test" => {
    "TESTS" => "t/*.t"
  }
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



