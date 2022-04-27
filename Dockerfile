# syntax=docker/dockerfile:1
FROM ruby:3.1.2
RUN apt-get update -qq && apt-get install -y nodejs mariadb-client
WORKDIR /app
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
RUN bundle