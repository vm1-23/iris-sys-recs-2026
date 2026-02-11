FROM ruby:3.4.1

RUN apt-get update -qq && apt-get install -y \
  build-essential \
  nodejs \
  yarn \
  libyaml-dev \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY Gemfile ./
RUN gem install bundler
RUN bundle install

COPY . .

EXPOSE 3000
CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]
