use warnings;
use strict;
print "Hello, world";
$a=0;
foreach my $i (@ARGV) {
    $a += $i;
}
print $a;
print "\n";	


