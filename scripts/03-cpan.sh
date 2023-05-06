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
sudo cpanm Template::Toolkit

### Testing
sudo cpanm Test::More Test::Deep Test::Warn


### Dancer
# cpanm Dancer2 #installed via apt
sudo cpanm Dancer2::Plugin::JWT

### Database related
sudo cpanm DBI DBD::SQLite

### Redis
sudo cpanm Dancer2::Session::Redis Redis
sudo cpanm Sereal::Decoder
sudo cpanm Dancer2::Session::Redis::Serialization::Sereal

# Postgres:
sudo apt-get -y install libpq-dev
pg_config
sudo cpanm DBD::Pg

### Update
cpan -u
