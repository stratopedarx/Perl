package Menu;
use 5.006001; # использовать версию Perl не ниже указанной
use strict; # включить дополнительные проверки 
use warnings; # и расширенную диагностику
our @ISA = qw(Exporter); # неизвестные имена искать в нем


sub get_menu {
    return "Hello dear friend\nWhat do you want from me?\nEnter please one of the following command:\n1. Login\n2. Registration\n3. Exit\n";
}

1;
__END__
