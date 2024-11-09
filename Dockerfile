# Step 1: Use the official Node.js image to build the React app
FROM node:14
# Set the working directory inside the container
WORKDIR /app
# Copy package.json and package-lock.json, then install dependencies
COPY package*.json ./
RUN npm install
# Copy the rest of the application code
COPY . .
# Build the React app for production
RUN npm run build
# Expose port 80
EXPOSE 3000

# Start Nginx
CMD ["npm", "Start"]
