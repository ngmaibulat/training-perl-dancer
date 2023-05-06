
### Using Dancer2 Web Framework

vscode ➜ /workspaces/training-perl-dancer (main) $ dancer2 gen -a app

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
