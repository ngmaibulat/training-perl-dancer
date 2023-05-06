#!/bin/bash

### Common packages
cpanm DateTime
cpanm Dotenv
cpanm Log::Log4perl
cpanm Text::ANSITable

### Web
cpanm JSON
cpanm Crypt::JWT
cpanm LWP::UserAgent
cpanm LWP::Protocol::https

### Template Engine
cpanm Template::Toolkit

### Testing
cpanm Test::More
cpanm Test::Deep
cpanm Test::Warn

### Dancer
# cpanm Dancer2 #installed via apt
cpanm Dancer2::Plugin::JWT

### Database related
cpanm DBI
cpanm DBD::SQLite

### Redis
cpanm Dancer2::Session::Redis Redis

# Postgres:
sudo apt-get -y install libpq-dev
pg_config
cpanm DBD::Pg

### Update
cpan -u
