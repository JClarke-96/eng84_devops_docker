# Docker
## Differences between containerisation and virtualisation

## What is Docker?

## What are the benefits of Docker?

## Using Docker
### Installing Docker
- Download Docker from online
- Install Docker Desktop
- Open Docker Desktop

### Docker commands
- `docker --version` check version
- `docker pull name_of_image`
- `docker images` display existing images
- `docker run name_of_image`
- `docker rmi name_of_image` delete an image (`-f` to force)
- `docker ps` check running containers (`-a` to check all)
- `docker rm container_ID` delete a container
- `docker start container_ID` start an existing container
- `docker stop container_ID` stop a running container

### Testing commands
- `docker pull ghost`
- `docker run -d -p 2368:2368 ghost`
- `docker rm container_ID -f` to delete ghost container
- `docker run -d -p 88:80 nginx` to run nginx
- `alias docker="winpty docker"
- `docker exec -it container_ID` to enter container
	- `apt-get update -y`
	- `cd usr/share/nginx/html`
	- `apt-get install nano`
	- `nano index.html`
	- Make any changed to html for page here, access with localhost:88
- `nano index.html` create html on host machine
- `docker cp index.html container_IP:path

### Creating an image
- `docker ps -a` to obtain container ID
- `docker commit container_ID repo_name` to commit container
- `docker push repo_name:tag` to push to DockerHub
