# Personal docker cheatsheet

### 1. Install docker on your system
- Use Docker for Mac and Docker for Windows
  - [Install Docker and run hello-world](https://docs.docker.com/engine/getstarted/step_one/#step-1-get-docker)

- Linux users need to install everything manually

  | Package | What it does |
| --- | --- |
| [Docker Engine](https://docs.docker.com/engine/installation/) | Creates operating environment for your applications |
| [Docker Compose](https://docs.docker.com/compose/install/)    | Compose is a tool for defining and running multi-container Docker applications. <br> With Compose, you use a Compose file to configure your application’s services.  |
| [Docker Machine](https://docs.docker.com/machine/install-machine/) | Provisions and manages remote Docker hosts <br> Provisions Swarm clusters |

### 2. Add personal format output for commands
- First, you need to login: `docker login`
  - It would create a file: `~/.docker/config.json`, where you could set a format for docker commands
    - It starts with a command name + Format, for example:
    
      `{
  "psFormat": "table {{.Names}}\\t{{.Image}}\\t{{.Ports}}\\t{{.Status}}\\t{{.Command}}"
}`

### 3. Some important commands

|Command|Purpose|
|---------|---|
|docker run | run a docker image/container<br>-t terminal & -i interactive<br>example: `docker run -ti ubuntu:latest bash`<br>if you don't have an ubuntu image, it will download and create it for you<br>--rm removes a created container after it does its task(s)<br>-d detach, leave the container to run in the background|
|docker attach | enter the container that is running<br> to exit container without turning it off:<br>either close the terminal tab or press <kbd>ctrl</kbd>+<kbd>P</kbd> then <kbd>ctrl</kbd>+<kbd>Q</kbd><br>- _make sure you don't have that bined to a command already_
|docker images| show docker images<br>- initial images are like systems (linux distros) |
|docker ps | show docker containers|
|docker ps -l| show last docker container<br>it is helpful to create an image from a container|
|docker commit| create an image from a specified container, example:<br>`docker commit container_name image_name`|
|docker tag| allows to change the name of the image, example<br> `docker tag previous_image_name new_image_name`|
