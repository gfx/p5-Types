#!perl -w
use strict;
use Test::More;

use Types;

# test Types here
is Types::hello(), 'Hello, world!';

done_testing;
