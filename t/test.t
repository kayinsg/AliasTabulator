#!/usr/bin/perl
use v5.40;
use autodie;
use List::Util qw(all);
use List::MoreUtils qw(natatime);
use Path::Tiny;
use Class::Tiny;
use Test::More;
use lib '../lib/';
use AliasToArrayTransformer;

subtest
"Separate alias declaration into array for Simple Commands" =>
sub
{
my $fullAlias = q(alias pyp="cd '~/Go'");
my $shortcut = "pyp";
my $command = "cd";
my $path = "~/Go";
my @expected = ($shortcut, $command, $path);

my @aliasDetails = getAliasDetailsForSimpleCommand($fullAlias);

is_deeply(\@aliasDetails, \@expected);
};


done_testing();
