# Use an official Node.js runtime as a parent image
FROM node:18

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the package.json and package-lock.json (if exists) into the working directory
COPY package*.json ./

# Install the app dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port your app will run on (assuming it's running on port 3000)
EXPOSE 5000

# Command to run your application
CMD ["npm", "start"]
