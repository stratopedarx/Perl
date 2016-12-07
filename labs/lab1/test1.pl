use warnings;
use strict;

sub sum {
    my($a, $b) = @_;
    return $a + $b;
}


print sum($ARGV[0], $ARGV[1]);
print "\n";
