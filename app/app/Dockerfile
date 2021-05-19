# Use Ubuntu 16.04
FROM ubuntu:16.04

# Setting the working directory inside the container
WORKDIR /home/ubuntu/app

# Copy app
COPY . .

# Install source list and packages
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install npm -y

# Install nodejs
RUN apt-get install curl -y
RUN apt-get install python-software-properties -y
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get install nodejs -y

# Install npm
RUN npm install -g pm2
RUN npm install

# Expose the port for the app
EXPOSE 3000


RUN echo "DB_HOST=mongodb://mongo:27017/posts" >> ~/.bashrc

# Run the app
CMD ["node", "app.js"]
