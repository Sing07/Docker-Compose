# Docker-Compose
Docker and Docker Compose cheatsheets

Some Docker Terms  
  
- An image is like a blueprint or template.  
- A container is the running instance based on an image.
- A tag of an image is its version number.


<h2> Check images in local machine </h2>
$ docker images
                                
<h2> Check running images in local machine </h2>
$ docker ps

<h2> Common flags to configure docker exectuions </h2>
$ docker run -d images  

*runs in background without blocking terminal console, but build logs won't show*

- *to show logs*  

$ docker logs <container-id>


<h2> To pull docker images from docker.io online repo [$ docker pull] </h2>
if version number is unspecified, <:latest> version will be pulled by default

example, pulling nginx from docker.io: 

$ docker pull nginx<no args>
    this will pull nginx:latest

$ docker pull nginx:<1.23>
    this will pull nginx:1.23  

- <h2> Quicker way &nbsp;&nbsp;&nbsp;&nbsp; [$ docker run] == [$docker pull && run] </h2>
$ docker run nginx:1.23

<h2> Port binding </h2>
$ docker run -p 80:80  <br>
where  80 = localenv, 80 = container env

    
</br>
</br>
</br>

<h2> Run docker by setting name, detached mode, port bind and name image </h2>
$ docker run --name <container-name> -d -p 9000:80 nginx:1.23
 

<h2> To stop container &nbsp;&nbsp;&nbsp;&nbsp; [$ docker stop {container-id}] </h2>

<h2> To quit &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  [$ docker quit] </h2>


