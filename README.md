# Docker
## What is Docker?
Docker is an open platform for developing, shipping, and running applications. Docker enables you to separate applications from infrastructure so you can deliver software quickly.

With Docker, you can manage infrastructure in the same ways you manage applications. By taking advantage of Docker's methodologies for shipping, testing, and deploying code quickly, you can significantly reduce the delay between writing code and running it in production.

## What are the benefits of Docker?
- Consistent and isolated environment
- Cost-effectiveness with fast deployment
- Repeatability and automation
- Flexibility

## Kubernetes K8
### What is Kubernetes K8?
Kubernetes is an open-source system for automating deployment, scaling, and management of containerised applications. It groups containers that make up an application into logical units for easy management and discovery.

### What are the benefits of Kubernetes K8?
- Automation
- Self-monitoring
- Scalability

## Differences between containerisation and virtualisation


## Using Docker
### Installing Docker
- Download Docker from online
- Install Docker Desktop
- Open Docker Desktop

### Docker documentation
- `docker run -d -p 4000:4000 docs/docker.github.io`

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
- `docker rm $(docker ps -qa)` delete all images

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

## Automate the build steps of nginx images
- Create a `Dockerfile` to run a set of instructions
- Use nginx as base image
- Copy app1 to index.html location
- Expose required port for base image
- Execute nginx command
- `docker build -t repo_name .` to build image from repo
- `docker run -d -p 80:80 image_name`

## Docker build app task
### Docker Hub and webhook
- Create Docker Hub repository
- Create Google Script to send an email on responce
- Add webhook with the Google Script to trigger on push

### Launch the plane project app app
- `docker pull jclarke96/plane_project`
- `docker run -d -p 8000:8000 jclarke96/plane_project`
- `docker push jclarke96/plane_project` push and trigger webhook

## 2-tier architecture
### Create images
#### App
- Copy `app` file to app directory
- Create Dockerfile `FROM ubuntu:16.04` to `COPY app`, install dependencies, and run app
- `docker build -t jclarke96/2tier_arch .`

#### Database
- Copy `mongod.config` file to database directory
- Create Dockerfile `FROM mongo:3.2.20` and `COPY mongod.config`
- `docker build -t jclarke96/2tier_arch .`

### Create images and containers
- Write `docker-compose.yml` to create images and containers
	- Set `DB_HOST` environment variable
	- Create app image and container
	- Create database image and container
- `docker compose up` to run `docker-compose.yml`
- Open `app cli` via Docker Desktop
- `nodejs seed.js` to seed database
