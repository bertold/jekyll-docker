FROM ruby:3.4.6

ARG CSV_VERSION="3.3.5"
ARG BASE64_VERSION="0.3.0"
ARG BIGDECIMAL_VERSION="3.2.3"
ARG GEM_VERSION="3.7.2"
ARG HTML_PROOFER_VERSION="4.4.3"
ARG JEKYLL_VERSION="4.4.1"
ARG JEKYLL_FEED_VERSION="0.17.0"
ARG JEKYLL_SEO_TAG_VERSION="2.8.0"
ARG JSON_VERSION="2.15.0"
ARG MINIMA_VERSION="2.5.2"
ARG PARALLEL_VERSION="1.27.0"
ARG RAKE_VERSION="13.3.0"
ARG REXML_VERSION="3.4.4"

RUN apt-get update && \
    apt-get install -y libopenjp2-7 libopenjp2-7-dev && \
    gem update --system $GEM_VERSION && \
    gem install bundler && \
    gem install minima -v $MINIMA_VERSION && \
    gem install jekyll-feed -v $JEKYLL_FEED_VERSION && \
    gem install html-proofer -v $HTML_PROOFER_VERSION && \
    gem install base64 -v $BASE64_VERSION && \
    gem install csv -v $CSV_VERSION && \
    gem install json -v $JSON_VERSION && \
    gem install jekyll-seo-tag -v $JEKYLL_SEO_TAG_VERSION && \
    gem install parallel -v $PARALLEL_VERSION && \
    gem install rexml -v $REXML_VERSION && \
    gem install bigdecimal -v $BIGDECIMAL_VERSION && \
    gem install rake -v $RAKE_VERSION && \
    gem install jekyll -v $JEKYLL_VERSION && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
