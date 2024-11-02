# Use the latest Node 20 image
FROM node:20

# Set the working directory
WORKDIR /app

# Copy only package.json and package-lock.json to leverage Docker cache for npm install
COPY package*.json ./

# Clean npm cache and install dependencies
RUN npm cache clean --force && npm install

# Copy the rest of your application files to the container
COPY . .

# Expose the port your app runs on
EXPOSE 4000

# Start the application
CMD ["node", "server.cjs"]
