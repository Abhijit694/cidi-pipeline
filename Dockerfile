# Use a Node.js base image
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to install dependencies
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port your application listens on (e.g., 3000)
EXPOSE 8000

# Command to run the application when the container starts
CMD ["node", "server.js"]