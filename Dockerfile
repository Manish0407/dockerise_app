FROM ruby:3.0.0

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
WORKDIR /blogs
COPY Gemfile /blogs/Gemfile
COPY Gemfile.lock /blogs/Gemfile.lock
RUN bundle install

RUN bundle install
RUN rails db:create
RUN rails db:migrate
CMD ["rails", "server", "-b", "0.0.0.0"]