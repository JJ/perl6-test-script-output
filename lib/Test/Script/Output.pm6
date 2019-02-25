use v6.c;
unit class Test::Script::Output:ver<0.0.1>;

use IO::Capture::Simple;
use Pod::Load;
use Test;

sub output-ok( $f, Str $msg ) is export {
    my @pod;
    my $output = capture_stdout {
        @pod = load( $f );
    };
    my $real-output;
    for @pod -> $block {
        $real-output ~= $block.contents.join("");
    }
    is( $output, $real-output, $msg );
}


=begin pod

=head1 NAME

Test::Script::Output - blah blah blah

=head1 SYNOPSIS

  use Test::Script::Output;

=head1 DESCRIPTION

Test::Script::Output is ...

=head1 AUTHOR

JJ Merelo <jjmerelo@gmail.com>

=head1 COPYRIGHT AND LICENSE

Copyright 2019 JJ Merelo

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

=end pod
