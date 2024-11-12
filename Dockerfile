# Use a base Ruby image
FROM ruby:3.1-slim

# Set the working directory inside the container
WORKDIR /app

# Install dependencies for building gems (this will help with installing gems like 'rackup')
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

# Copy the Gemfile and Gemfile.lock to the container
COPY Gemfile Gemfile.lock ./

# Install Ruby dependencies
RUN bundle install

# Copy the rest of the application files
COPY . .

# Expose the port that Sinatra will use
EXPOSE 4567

# Command to run the application with rackup
CMD ["bundle", "exec", "rackup", "--host", "0.0.0.0", "--port", "4567"]
