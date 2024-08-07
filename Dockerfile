# Use the official Node.js 18 image.
FROM node:18

# Create and change to the app directory.
WORKDIR /usr/src/app

# Copy package.json and package-lock.json.
COPY package*.json ./

# Install dependencies.
RUN npm install

# Copy the rest of the application code.
COPY . .

# Build the application.
RUN npm run build

# Expose the port the app runs on.
EXPOSE 3000

# Define the command to run the application.
CMD ["npm", "run", "start"]
