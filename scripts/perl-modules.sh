perl -e 'print join("\n", @INC) . "\n";'

perldoc -l Dancer2::Session::Redis

(@INC contains:
/workspaces/training-perl-dancer/app/bin/../lib
/etc/perl
/usr/local/lib/x86_64-linux-gnu/perl/5.34.0
/usr/local/share/perl/5.34.0
/usr/lib/x86_64-linux-gnu/perl5/5.34
/usr/share/perl5
/usr/lib/x86_64-linux-gnu/perl-base
/usr/lib/x86_64-linux-gnu/perl/5.34
/usr/share/perl/5.34
/usr/local/lib/site_perl
)

perl -e 'print join("\n", @INC) . "\n";'
/home/vscode/.asdf/installs/perl/5.36.1/lib/site_perl/5.36.1/x86_64-linux
/home/vscode/.asdf/installs/perl/5.36.1/lib/site_perl/5.36.1
/home/vscode/.asdf/installs/perl/5.36.1/lib/5.36.1/x86_64-linux
/home/vscode/.asdf/installs/perl/5.36.1/lib/5.36.1


### Review

!
! Can't write to /usr/local/share/perl/5.34.0 and /usr/local/bin: Installing modules to /home/vscode/perl5
! To turn off this warning, you have to do one of the following:
!   - run me as a root or with --sudo option (to install to /usr/local/share/perl/5.34.0 and /usr/local/bin)
!   - Configure local::lib in your existing shell to set PERL_MM_OPT etc.
!   - Install local::lib by running the following commands
!
!         cpanm --local-lib=~/perl5 local::lib && eval $(perl -I ~/perl5/lib/perl5/ -Mlocal::lib)