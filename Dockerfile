# Use the latest Node 20 image
FROM node:20

# Set the working directory
WORKDIR /app

# Copy only package.json and package-lock.json to leverage Docker cache for npm install
COPY package*.json ./

# Install dependencies
RUN npm install
# Copy the rest of the application files
COPY . .
# Generate Prisma client
RUN npx prisma generate --schema=./prisma/schema.prisma




# Expose the port your app runs on
EXPOSE 3000

# Start the application
CMD ["node", "server.cjs"]
