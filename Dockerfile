FROM node:lts-alpine

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./
RUN npm install

# Build the ts code
COPY . .
RUN npm run build

# Run 🏃🏻‍♂️
ENV PORT=3000
EXPOSE ${PORT}
CMD ["node", "dist/server.js"]
