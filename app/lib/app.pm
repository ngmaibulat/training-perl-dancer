package app;
use Dancer2;

our $VERSION = '0.1';

get '/' => sub {
    # template 'index' => { 'title' => 'app' };
    template 'index', { title => 'Home' }, { layout => 'layout' };
};

get '/about' => sub {
    template 'about', { title => 'About' }, { layout => 'layout' };
};


get '/contact' => sub {
    template 'contact', { title => 'Contact' }, { layout => 'layout' };
};


true;


