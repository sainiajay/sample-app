FROM node:lts

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./
RUN npm install

# Build the ts code
COPY . .
RUN npm run build:ts

# Run 🏃🏻‍♂️
EXPOSE 3000
CMD ["fastify", "start", "-l", "info", "dist/app.js"]
