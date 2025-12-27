# Use official Node.js LTS image
FROM node:18

# Create app directory
WORKDIR /usr/src/app

# Install dependencies
COPY package*.json ./
RUN npm install --production

# Bundle app source code
COPY . .

# Expose port
EXPOSE 3000

# Run the app
CMD ["npm", "start"]