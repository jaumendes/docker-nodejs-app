FROM node:14.17.0
ENV NODE_ENV=production

# Create app directory
WORKDIR /app

# Installing dependencies
COPY package*.json ./
COPY package-lock.json* ./
RUN npm install --production

# Copying source files
COPY . .

# Running the app
CMD [ "npm", "start" ]
