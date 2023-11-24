# Use an official Node.js runtime as a base image
FROM node:20-alpine3.17

# # Install Angular CLI globally

# # Set the working directory
# WORKDIR /usr/src/app

# # Copy package.json and package-lock.json to the working directory
# COPY package*.json ./

# # Install the application dependencies
# RUN npm install

# COPY . .

# RUN npm install -g @angular/cli


# RUN ng build
# # Expose the port on which the app runs (if applicable)

# EXPOSE 4200

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the application code to the container
COPY . .

# Expose the port the app runs on
EXPOSE 4200

# Start the application
CMD ["npm", "start"]