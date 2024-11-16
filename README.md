# Ruby-App Docker App 🌐
Ruby-App is a simple web application built with Ruby and Sinatra. The app is containerized using Docker, enabling seamless deployment across various environments. 🚀
# Project Structure 📁
The project structure is organized as follows:

ruby-app/

├── Dockerfile           # Dockerfile to build the container image

├── Gemfile              # Ruby gem dependencies for the app

├── Gemfile.lock         # Dependency lock file

├── README.md            # Project documentation

├── app.rb               # Main Sinatra application code

# Requirements 📋
To run this project locally or with Docker, you will need:

# Ruby 💎
Version 2.7 or higher.

# Sinatra
Listed in the Gemfile.

# Bundler
For managing dependencies.

# Docker 🐳
To run the containerized app.

# Git
To clone the repository.

# How to Clone and Run

# Step 1: Clone the Repository
Clone the repository using:

git clone https://github.com/alenac07/ruby-app.git

cd ruby-app

# Step 2: Install Dependencies and Run Locally
To run the app locally:

1. Install the required Ruby version and Bundler.

2. Install the dependencies using:
   bundle install

3. Run the application:
   ruby app.rb
# Deploying with Docker 🚀
# Step 1: Pull the Image
To download the Docker image from Docker Hub:

docker pull alenac07/app-rb:latest

# Step 2: Run the Container
Run the container with the following command:

docker run -d -p 4567:4567 alenac07/app-rb:latest

# Step 3: Access the Application
Open your browser and navigate to:

👉 http://localhost:4567

You will see your Sinatra application running.

# Docker Hub 🌍
The Dockerized version of this project is available on Docker Hub:

👉 Docker Hub: https://hub.docker.com/r/alenac07/app-rb


