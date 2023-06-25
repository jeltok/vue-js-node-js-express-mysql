# Use the official lightweight Node.js 12 image.
# https://hub.docker.com/_/node
FROM node:12-slim

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install production dependencies.
RUN npm install --only=production

# Copy the local code to the container's workspace.
COPY . ./

# Make port 8080 available to the world outside this container
EXPOSE 8080

# Run the application
CMD [ "npm", "start" ]
