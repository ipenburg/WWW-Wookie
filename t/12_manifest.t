#!/usr/bin/env perl -w    # -*- cperl -*-
use strict;
use warnings;
use utf8;
use 5.020000;

use Test::More tests => 2;

our $VERSION = v1.1.2;

eval {
    require ExtUtils::Manifest;
    1;
} or do {
    my $msg = q{ExtUtils::Manifest required to check manifest};
    plan 'skip_all' => $msg;
};

use ExtUtils::Manifest;
is_deeply [ ExtUtils::Manifest::manicheck() ], [], 'missing';
is_deeply [ ExtUtils::Manifest::filecheck() ], [], 'extra';
