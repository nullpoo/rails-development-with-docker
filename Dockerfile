FROM ruby:2.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev postgresql-client nodejs

RUN mkdir /app

WORKDIR /tmp
COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock
RUN bundle install

ADD . /app
WORKDIR /app
