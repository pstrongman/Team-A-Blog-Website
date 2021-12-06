FROM node:14-alpine

EXPOSE 3000
WORKDIR /usr/src/app

# Copy just what we need to install dependencies
COPY ["package.json", "package-lock.json", "next.config.js", "./"]

# Install build dependencies
RUN npm --production ci

# Copy the source code to build
COPY ["./pages/", "./pages/"]
COPY ["./public/", "./public/"]
COPY ["./styles/", "./styles/"]

# Build the project
RUN npm run build

ENTRYPOINT ["npm", "start"]