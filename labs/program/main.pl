use warnings;
use utf8;
use Menu;
use User;
# use Digest::MD5
# qw(md5_hex)
# $p_c = md5_hex($password);


my $database = 'users.txt';

sub is_empty {
    # check that string is empty or not
    return !$_;
}

sub read_file {
    open(FIL,$database);
    @strings=<FIL>;
    close(FIL);
    return @strings;
}


sub get_users_from_database {
    
    @users = ();
    @strings=read_file();
    foreach $line (@strings) {
        @temp = $line.split('=');
        my $user = User->new();
        $user->give_login($temp[0]);
        $user->give_password($temp[1]);
        $user->give_name($temp[2]);
        push(@users, user);
    }
        
    return @users;
}


sub login {
    print "Please enter login: ";
    my $login = <STDIN>; chomp($login);
    # if (!is_empty($login)) { print "empty login"; exit; }
    print "Please enter password: ";
    my $password = <STDIN>; chomp($password);
    # if (!is_empty($password)) { print "empty password"; exit; }
    
    @users = get_users_from_database();
    print "END LOGIN\n";
}



sub create_user {
# ($login, $password, $name);
}


sub registration {
    print "Please enter login: ";
    my $login = <STDIN>; chomp($login);
    # if (!is_empty($login)) { print "empty login"; exit; }
    print "Please enter password: ";
    my $password = <STDIN>; chomp($password);
    # if (!is_empty($password)) { print "empty password"; exit; }
    print "Please enter name: ";
    my $name = <STDIN>; chomp($name);
    # if (!is_empty($password)) { print "empty password"; exit; }
    create_user($login, $password, $name);
    @users = get_users_from_database();
    check_user();
    print "END REGISTRATION\n";
}



while(1) {
    print &Menu::get_menu();    
    my $number = <STDIN>; chomp($number); # отсекаем символ \n
    if ($number == 1) {
        print "Login...\n";
        login();
    } elsif ($number == 2) {
	print "Registration...\n";
        registration();
    } elsif ($number == 3) {
        print "Have a nive day\n";
        exit;
    } else { 
        print "Wrong number\nEnter command again: ";
    }
}	




