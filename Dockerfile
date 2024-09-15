# Using Node.js version 20
FROM node:20

# Set the working directory
WORKDIR /app

# Copy the application files into the container
COPY package*json ./

# Install dependencies
RUN npm install

COPY . .
# Build app
# RUN npm run build

# Expose the port that the server will use
EXPOSE 5173

# Command to start the Express server
CMD ["npm", "run", "dev"]
