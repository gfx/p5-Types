#!perl -w
use strict;
use Test::Requires { 'Test::LeakTrace' => 0.13 };
use Test::More;

use Types;

no_leaks_ok {
    # use Types here
};

done_testing;
