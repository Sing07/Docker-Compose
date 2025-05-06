# Simple & quick docker/Dcompose commands

Some Docker Terms  
  
- An image is like a blueprint or template.  
- A container is the running instance based on an image.
- A tag of an image is its version number.

`$ docker images` - Check images in local machine
                              
`$ docker ps` - Check running images in local machine

`$ docker run -d images` - runs in background without blocking terminal console, but build logs won't show

`$ docker logs {container-id}` - to show logs

</br>
</br>

<h2> To pull docker images from docker.io online repo [$ docker pull] </h2>

*if version number is unspecified, <:latest> version will be pulled by default*

`$ docker pull nginx{no args}` - this will pull nginx:latest

`$ docker pull nginx:{1.23}`  - this will pull nginx:1.23

- <h2> Quicker way &nbsp;&nbsp;&nbsp;&nbsp; [$ docker run] == [$docker pull && run] </h2>
`$ docker run nginx:1.23`  

<h2> Port binding </h2>

`$ docker run -p 80:80 `  
<p> where 80 = localenv, 80 = container env </p>

    
</br>
</br>
</br>

<h2> Run docker by setting name, detached mode, port bind, image name </h2>

`$ docker run --name {container-name} -d -p 9000:80 nginx:1.23`

or

`$ docker run -d \`  
`-p 80:80`  
`-e MONGO_INITDB_ROOT_USERNAME=admin \`  
`-e MONGO_INITDB_ROOT_PASSWORD=pass \`  
`--network #optional`  
`--name {container-name}`  

</br>
</br>

`$ docker stop {container-id}` 

`$ docker quit` 

</br>
</br>
</br>

# To build image, with Dockerfile present, or run [$ docker init]
`$ docker build -t {image_name} .`

<h2> to build an image from a Dockerfile without the cache </h2>

`$ docker build -t {image_name} . –no-cache`

<h2> Delete an Image </h2>

`$ docker rmi {image_name}`
  
<h2> remove all unused images </h2>

`$ docker image prune `


</br>
</br>
</br>

# Using Docker Compose

`docker compose up     ` – Create and start containers, networks, and volumes.  
`docker compose down   ` – Stop and remove containers, networks, images, and volumes.  

`docker compose pause  ` – Pause running containers (suspend processes).  
`docker compose start  ` – Start existing containers for a service.  
`docker compose stop   ` – Stop running containers without removing them.  
`docker compose restart` – Restart services defined in the Compose file.  

`docker compose version` – Show the Docker Compose version information.  
`docker compose config ` – Validate and view the Compose file configuration.  
`docker compose run    ` – Run a one-off command in a new container.  

`docker compose ps     ` – List containers managed by Compose.  
`docker compose images ` – Show images used by the services.  
`docker compose cp     ` – Copy files/folders between a service container and the local filesystem.  
`docker compose exec   ` – Execute a command in a running container.  
`docker compose logs   ` – View output logs from services.  



