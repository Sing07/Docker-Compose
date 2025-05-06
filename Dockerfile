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

#CMD - runs in image, not while build
CMD ["node", "server.js"]
