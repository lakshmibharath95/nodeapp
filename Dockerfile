# Use official Node.js LTS Alpine image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json for deterministic install
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy the rest of the application
COPY . .

# Expose the port your app listens on
EXPOSE 3000

# Use environment variable for flexibility
ENV PORT=3000

# Start the app
CMD ["node", "app.js"]

