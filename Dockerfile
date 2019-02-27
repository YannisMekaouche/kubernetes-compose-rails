FROM ruby:2.2.0
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev
#RUN mkdir /
WORKDIR /
ADD Gemfile /Gemfile
ADD Gemfile.lock /Gemfile.lock
RUN bundle install
ADD . /
