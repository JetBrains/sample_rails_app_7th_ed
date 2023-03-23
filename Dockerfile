FROM ruby:3.1.2

RUN mkdir /sample_rails_application
WORKDIR /sample_rails_application
COPY Gemfile /sample_rails_application/Gemfile
COPY Gemfile.lock /sample_rails_application/Gemfile.lock
RUN gem install bundler -v '2.3.14'
RUN bundle install