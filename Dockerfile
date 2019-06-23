FROM ruby:2.5.1
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /cons_soap_ms

WORKDIR /cons_soap_ms

COPY Gemfile /cons_soap_ms/Gemfile
COPY Gemfile.lock /cons_soap_ms/Gemfile.lock
RUN gem install bundler
RUN bundle install
COPY . /cons_soap_ms

EXPOSE 2090
