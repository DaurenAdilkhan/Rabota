# [Docker](https://www.docker.com/)
### Contents
  - [1. Install docker on your system](https://github.com/OlzhasAlexandrov/cheatsheets/blob/master/infrastructure/docker.md#1-install-docker-on-your-system)
  - [2. Add personal format output for commands](https://github.com/OlzhasAlexandrov/cheatsheets/blob/master/infrastructure/docker.md#2-add-personal-format-output-for-commands)
  - [3. Some important commands](https://github.com/OlzhasAlexandrov/cheatsheets/blob/master/infrastructure/docker.md#3-some-important-commands)
  - [4. Dockerfile](https://github.com/OlzhasAlexandrov/cheatsheets/blob/master/infrastructure/docker.md#4-dockerfile)

### 1. Install docker on your system
- Use Docker for Mac and Docker for Windows
  - [Install Docker and run hello-world](https://docs.docker.com/engine/getstarted/step_one/#step-1-get-docker)

- Linux users need to install everything manually

  | Package | What it does |
| --- | --- |
| [Docker Engine](https://docs.docker.com/engine/installation/) | Creates operating environment for your applications |
| [Docker Compose](https://docs.docker.com/compose/install/)    | Compose is a tool for defining and running multi-container Docker applications. <br> With Compose, you use a Compose file to configure your application’s services.  |
| [Docker Machine](https://docs.docker.com/machine/install-machine/) | Provisions and manages remote Docker hosts <br> Provisions Swarm clusters |

### 2. Add personal format output for commands - [press to top](#)
- First, you need to login: `docker login`
  - It would create a file: `~/.docker/config.json`, where you could set a format for docker commands
    - It starts with a command name + Format, for example:
    
      `{
  "psFormat": "table {{.Names}}\\t{{.Image}}\\t{{.Ports}}\\t{{.Status}}\\t{{.Command}}"
}`

### 3. Some important commands - [press to top](#)

|Command|Purpose|
|---------|---|
|docker run | run a docker image/container<br>-t terminal & -i interactive<br>example: `docker run -ti ubuntu:latest bash`<br>- *ubuntu:latest is a repository*<br>--rm removes a created container after it does its task(s)<br>-d detach, leave the container to run in the background<br>add -v flag to add a volume to a container, example:<br>`docker run -ti -v /shared_folder ubuntu bash`<br>add --volumes-from to retrive from another container, example:<br>`docker run -ti --volumes-from container_name ubuntu bash`<br>to add a folder that won't disappear, specify host's and container's folders, example:<br>`docker run -ti -v ~/Shared_folder:/shared ubuntu bash`|
|docker images| show docker images<br>- *initial images consist of* **just enough** *to form operating systems*<br>- *they are much smaller than complete OSs* |
|docker ps |show running docker containers: `docker ps`<br>show last used container: `docker ps -l`<br>show all existing containers: `docker ps -a` |
|docker kill| stop a container: `docker kill container_name`<br>- _stopped containers still exist_<br>to stop all: `docker stop $(docker ps -a -q)`|
|docker rm| remove a container: `docker rm container_name`<br>to remove all: `docker rm $(docker ps -a -q)`|
|docker rmi| remove an image: `docker rmi image_name`<br>to remove all: `docker rmi $(docker images -q)`|
|docker attach |`docker attach` to enter the container that is running<br>exit container without turning it off:<br>either close the terminal tab or press <kbd>ctrl</kbd>+<kbd>P</kbd> then <kbd>ctrl</kbd>+<kbd>Q</kbd><br>- _make sure you don't have that binded to a command already_|
|docker commit| create an image from a specified container, example:<br>`docker commit container_name image_name`|
|docker tag| allows to change the name of the image, example:<br> `docker tag previous_image_name new_image_name`|
|docker logs| retrive logs of a container, example:<br>`docker logs name_of_a_container`|


### 4. Dockerfile - [press to top](#)
*a file for docker that can create an image*

*-t stands for tag*

- Example:
    `docker build -t image_name dockerfile_folder`