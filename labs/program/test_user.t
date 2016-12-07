use Test::Simple tests => 5;

use User;


sub create_test_user {
    my $user = User->new();
    $user->give_login('test_user');
    $user->give_password(12345);
    $user->give_name('robot');
    return $user;
}


ok(create_test_user(), "user has been tested successful");
ok(create_test_user()->say_login() == 'test_user', "say_login has been tested successful");
ok(create_test_user()->say_password() == 12345, "say_password has been tested successful");
ok(create_test_user()->say_name() == 'robot', "say_name has been tested successful");
ok(create_test_user() != create_test_user(), "different instances");

