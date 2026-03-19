FROM ruby:3.4.1

RUN apt-get update -qq && apt-get install -y \
  build-essential \
  nodejs \
  default-libmysqlclient-dev \
  libyaml-dev \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .

CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]