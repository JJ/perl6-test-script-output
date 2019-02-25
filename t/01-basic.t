use v6.c;
use Test;
use Test::Script::Output;

for <runnable other> -> $f {
    my $io = "./$f.p6".IO.e ?? "./$f.p6".IO !! "t/$f.p6".IO;
    output-ok( $io, "$f output is OK" );
}

my $dir = "t/".IO.d ?? "t/dir".IO !! "dir/".IO;
dir-ok( $dir, "All scripts in the dir are OK" );
done-testing;