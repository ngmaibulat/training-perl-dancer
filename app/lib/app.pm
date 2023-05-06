package app;
use Dancer2;
use Data::Dumper qw(Dumper);

our $VERSION = '0.1';

our $counter = 1;

get '/' => sub {
    # template 'index' => { 'title' => 'app' };
    template 'index', { title => 'Home' }, { layout => 'layout' };
};

get '/about' => sub {
    template 'about', { title => 'About' }, { layout => 'layout' };
};


get '/contact' => sub {
    my $val = query_parameters->get('value');
    # my %data = (
    #     value => $val
    # ); 
    template 'contact', { title => 'Contact', data => { value => $val }  }, { layout => 'layout' };
};

get '/counter' => sub {
    $counter++;
    return $counter;
};

get '/session' => sub {
    # my $counter = session('counter');
    my $counter = session('counter') || 0;
    $counter = $counter + 2;
    session counter => $counter;
    my $counter2 = session('counter') || 0;
    return "$counter $counter2";
};


get '/config' => sub {
    my $config = config();
    my $res = to_json($config, {pretty => 1, canonical => 1});
    return $res;
    # return Dumper($config);
};


get '/echo' => sub {
    my $msg = query_parameters->get('msg');
    return $msg;
};

get '/item/:id[Int]' => sub {
    my $id = route_parameters->get('id');

    if ($id > 30) {
        send_error('Not Found', 404);
        # status 'not found';
        return 'Not Found';
    }

    return $id;
};

# get '/array/**' => sub {
#     my $parts = splat;
#     return Dumper($parts);
# };

get '/array/**' => sub {
    my @parts = splat;
    my @elems = shift @parts;
    return Dumper(\@elems);
};

get '/redirect' => sub {
    my $url = "https://google.com";
    redirect $url;
};

post '/post' => sub {
    debug "/post";
    my $msg = body_parameters->get('msg');
    return $msg;
};

get '/data' => sub {
    debug "/data";
    my $data = [
        { column1 => 'Data 1', column2 => 'Data 2' },
        { column1 => 'Data 3', column2 => 'Data 4' },
        { column1 => 'Data 5', column2 => 'Data 6' },
        { column1 => 'Data 7', column2 => 'Data 8' },
        { column1 => 'Data 9', column2 => 'Data 10' },
        { column1 => 'Data 11', column2 => 'Data 12' },
        { column1 => 'Data 13', column2 => 'Data 14' },
        { column1 => 'Data 15', column2 => 'Data 16' },
        { column1 => 'Data 17', column2 => 'Data 18' },
        { column1 => 'Data 19', column2 => 'Data 20' },
    ];
    template 'data.tt', { data => $data };
};


true;


