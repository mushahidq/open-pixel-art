# Set the base image as the latest node alpine version
FROM node:20.15.1-alpine3.20

# Copy the work directory so we can use it
COPY . /open-pixel-art
WORKDIR /open-pixel-art

# Install Dependencies
RUN npm install

# Test Code
RUN npm test

# Expose 8080 Port so we can access when we have the Docker instance running
EXPOSE 8080

# Turn on Web Server
CMD ["npm", "start"]