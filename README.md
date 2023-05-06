### Resources

- https://manpages.ubuntu.com/manpages/trusty/man3/Dancer2::Manual.3pm.html
- https://manpages.ubuntu.com/manpages/bionic/man3/Dancer2::Manual.3pm.html
- https://metacpan.org/dist/Plack/view/script/plackup
- https://metacpan.org/pod/Dancer2::Plugin::JWT
- https://metacpan.org/pod/Dancer2
- https://uwsgi-docs.readthedocs.io/en/latest/PSGIquickstart.html
- https://gist.github.com/rleir/84fb6db899af476f5142
- https://perlmaven.com/
- https://perlmaven.com/search/Template::Toolkit
- http://template-toolkit.org/about.html
- http://www.template-toolkit.org/docs/manual/Directives.html
- https://metacpan.org/pod/Test::Deep
- https://perldoc.perl.org/Test::More
- https://perldoc.perl.org/perlop#Regexp-Quote-Like-Operators
- http://modernperlbooks.com/books/modern_perl/index.html
- https://learn.perl.org/books/beginning-perl/
- https://www.perltutorial.org/
- https://metacpan.org/pod/Plack
- https://metacpan.org/pod/Text::ANSITable

- https://github.com/libwww-perl/uri-db/


### Using Dancer2 Web Framework

```
dancer2 gen -a app
```

+ app
+ app/.dancer
+ app/config.yml
+ app/MANIFEST.SKIP
+ app/Makefile.PL
+ app/cpanfile
+ app/lib
+ app/lib/app.pm
+ app/t
+ app/t/001_base.t
+ app/t/002_index_route.t
+ app/public
+ app/public/dispatch.fcgi
+ app/public/dispatch.cgi
+ app/public/404.html
+ app/public/500.html
+ app/public/favicon.ico
+ app/views
+ app/views/index.tt
+ app/environments
+ app/environments/production.yml
+ app/environments/development.yml
+ app/bin
+ app/bin/app.psgi
+ app/public/images
+ app/public/images/perldancer.jpg
+ app/public/images/perldancer-bg.jpg
+ app/public/css
+ app/public/css/error.css
+ app/public/css/style.css
+ app/public/javascripts
+ app/public/javascripts/jquery.js
+ app/views/layouts
+ app/views/layouts/main.tt

Your new application is ready! To run it:

        cd app
        plackup bin/app.psgi

To access your application, point your browser to http://localhost:5000

If you need community assistance, the following resources are available:
- Dancer website: https://perldancer.org
- Twitter: https://twitter.com/PerlDancer/
- GitHub: https://github.com/PerlDancer/Dancer2/
- Mailing list: https://lists.perldancer.org/mailman/listinfo/dancer-users
- IRC: irc.perl.org#dancer

Happy Dancing!


### Structure

```
.
├── bin
│   └── app.psgi
├── config.yml
├── cpanfile
├── environments
│   ├── development.yml
│   └── production.yml
├── lib
│   └── app.pm
├── Makefile.PL
├── MANIFEST
├── MANIFEST.SKIP
├── public
│   ├── 404.html
│   ├── 500.html
│   ├── css
│   │   ├── error.css
│   │   ├── main.css
│   │   ├── page.css
│   │   ├── style.css
│   │   └── tailwind.css
│   ├── dispatch.cgi
│   ├── dispatch.fcgi
│   ├── favicon.ico
│   ├── images
│   │   ├── perldancer-bg.jpg
│   │   └── perldancer.jpg
│   └── javascripts
│       └── jquery.js
├── t
│   ├── 001_base.t
│   └── 002_index_route.t
├── views
│   ├── about.tt
│   ├── contact.tt
│   ├── index.tt
│   └── layouts
│       └── layout.tt
└── views-std
    ├── index.tt
    └── layouts
        └── main.tt
```