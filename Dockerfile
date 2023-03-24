FROM ruby:3.1.2

RUN mkdir /sample_rails_app_7th_ed
WORKDIR /sample_rails_app_7th_ed
COPY Gemfile /sample_rails_app_7th_ed/Gemfile
COPY Gemfile.lock /sample_rails_app_7th_ed/Gemfile.lock
RUN gem install bundler -v '2.3.14'
RUN bundle install
EXPOSE 3000

CMD bin/rails server --port 3000 --binding 0.0.0.0