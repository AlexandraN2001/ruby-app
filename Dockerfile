# Use a base Ruby image
FROM ruby:3.1-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the project files to the container
COPY Gemfile Gemfile.lock ./  
COPY app.rb .

# Install Ruby dependencies
RUN bundle install

# Expose the port that Sinatra will use
EXPOSE 4567

# Command to run the application
CMD ["ruby", "app.rb"]
