FROM ruby:3.4.6

ARG GEM_VERSION="3.7.2"

RUN apt-get update && \
    gem update --system $GEM_VERSION && \
    gem install bundler html-proofer jekyll && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
