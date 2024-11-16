FROM ruby:3.1-slim
WORKDIR /app
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
COPY Gemfile Gemfile.lock ./
RUN bundle install
COPY . .
EXPOSE 4567
CMD ["bundle", "exec", "rackup", "--host", "0.0.0.0", "--port", "4567"]
