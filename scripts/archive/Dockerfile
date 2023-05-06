FROM perl:5.36.1

# Install any additional packages or dependencies needed for your project
RUN cpanm Dancer2 Dancer2::Session::Redis Redis

# Set up any necessary environment variables
ENV PERL5LIB="/usr/local/lib/perl5/site_perl/5.36.1"

# Optional: Set a working directory for the container
WORKDIR /app
