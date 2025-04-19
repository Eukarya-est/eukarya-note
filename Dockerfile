FROM debian:12

# Reference: 
# BillRaymond/GitHub Pages Jekyll Dockerfile 
# <GitHub Pages Jekyll Dockerfile> 
# https://gist.github.com/BillRaymond/db761d6b53dc4a237b095819d33c7332#file-github-pages-jekyll-dockerfile

RUN apt-get update

RUN apt-get -y install git \
# Commad line tool and library 
    curl \
# Automatic shell script producing tool
    autoconf \
# Parser generator
    bison \
# Package for building Debian packages
    build-essential \
# Secure Sockets Layer toolkit
    libssl-dev \
# C library for parsing and emitting data in YAML
    libyaml-dev \
# Virtual Package
    libreadline6-dev \
# Compression library
    zlib1g-dev \
# Transitional package
    libncurses5-dev \
# Foreign Function Interface library
    libffi-dev \
# GNU dbm database routines
    libgdbm6 \
# GNU dbm database routines (development files)
    libgdbm-dev \
# Berkeley Database Libraries
    libdb-dev \
# Package management related utility programs
    apt-utils

# Install Ruby, RubyGems, GCC & Make
RUN apt-get -y install ruby-full build-essential zlib1g-dev

# Install Jekyll and Bundler
RUN gem install --no-document jekyll -v 3.10.0
RUN gem install --no-document bundler