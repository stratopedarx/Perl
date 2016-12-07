use warnings;
use strict;


sub factorial {
    my $total = 1;
    for(; $_[0] != 1;$_[0]--) {
        $total *= $_[0]; 
}    
    
    return $total;
}

print factorial($ARGV[0]);
print "\n";




sub fuck {
    if ($_[0] == 1) {
        return 1;
    }
    return $_[0] * fuck($_[0]--);
}

print fuck($ARGV[0]);
print "\n";

