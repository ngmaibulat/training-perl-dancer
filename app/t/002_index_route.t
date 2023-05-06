use strict;
use warnings;

use FindBin;
use lib "$FindBin::Bin/../lib";

use app;
use Test::More tests => 3;
use Plack::Test;
use HTTP::Request::Common;
use Ref::Util qw<is_coderef>;


my $app = app->to_app;
my $test = Plack::Test->create($app);


subtest main => sub {
    #main
    my $res  = $test->request( GET '/' );
    ok( is_coderef($app), 'Got app' );
    ok( $res->is_success, '[GET /] successful' );
    is $res->status_line, '200 OK', 'Status';
    ok( $res->content =~ /Home/, 'Content' );
};

subtest not_found => sub {
    #main
    my $res  = $test->request( GET '/notthere' );
    is $res->status_line, '404 Not Found', 'Status';
    ok( $res->content =~ /404/, 'Content' );
};

subtest post_request => sub {
    #main
    my $res  = $test->request( POST '/post', {msg => 'Hello'} );
    ok( $res->is_success, '[POST /post] successful' );
    is $res->status_line, '200 OK', 'Status';
    is $res->content, 'Hello', 'Content';
    # ok( $res->content =~ /Home/, 'Content' );
};
