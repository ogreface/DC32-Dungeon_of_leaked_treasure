# Use the official Node.js image as the base image
FROM node:14

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Set environment variables
ENV PORT=3000
ENV MONGODB_URI=mongodb://mongo:27017/notes_app

# Expose the port the app runs on
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
