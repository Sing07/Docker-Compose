# Make sure there is a .dockerignore file in same pwd to ignore module files like node_modules

# pulls node image from docker.io 
FROM node:19-alpine

# copies package.json from Dockerfile working directory into container's /app/src file sys
COPY package.json /app/
COPY src /app/

# similar to cd in bash
WORKDIR /app

# executes this command in container terminal
#RUN - runs during build
RUN npm install

# for if we have 'process.env.PORT' in our code
# ENV PORT = 9000
# EXPOSE 9000

#CMD - runs in image, not during build
CMD ["node", "server.js"]
