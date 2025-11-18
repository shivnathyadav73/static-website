# Use a lightweight base image
FROM node:18-alpine

# Set working directory inside container
WORKDIR /app

# Copy all project files into container
COPY . .

# Install dependencies (if Node project)
RUN npm install

# Expose port (change as needed)
EXPOSE 8080

# Start the app
CMD ["npm", "start"]
