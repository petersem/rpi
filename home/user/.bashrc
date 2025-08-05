# Set docker aliases
alias dive='docker run -ti --rm -v /var/run/docker.sock:/var/run/docker.sock wagoodman/dive'
alias cdkr='cd ~/docker'
alias cdcd='cd ~/code/dockerholics/compose-examples'
alias list='docker ps -a --format "table {{.Names}}\t{{.ID}}\t{{.Status}}" | (read -r; printf "%s\n" "$REPLY"; sort -k 1 )'
alias ddf='docker system df'
alias down='docker compose down -v'
alias pull='docker compose pull'
alias up='docker compose up -d'
alias inspect='docker inspect'
alias create='docker compose up --no-start'
alias stop='docker stop'
alias startall='docker start $(docker ps -a -q)'
alias stopall='docker stop $(docker ps -a -q)'
alias delall='docker rm $(docker ps -a -q)'
alias start='docker start'
alias prune='docker system prune -a --volumes'
alias del='docker rm'
alias logs='docker logs -f'
alias ddf='docker system df'

# Set other aliases
alias ver='cat /etc/os-release && uname -mrs && docker -v && docker compose version'
alias osupgrade='sudo do-release-upgrade'
alias upgrade='sudo apt-get update && sudo apt-get upgrade -y && sudo apt autoremove --purge -y'
alias topsize='sudo du -Sha | sort -rh | head -n 10'



# FUNCTIONS ####################################################

# run a command inside a given container
drun() {
  docker exec $1 $2
}

# Restarts a container
#
cycle() {
  docker restart $1
}

# pulls a image and then creates and starts it
pullup() {
  pull $1
  up $1
}

# Opens a bash shell, given a supplied container name
#
termb() {
  docker exec -it $1 /bin/bash
}

# Opens a ash shell, given a supplied container name
#
terma() {
  docker exec -it $1 /bin/ash
}

# stops and deletes a container
#
std() {
  stop $1
  del $1
}

# Shows 'port in use' details for a supplied port number
#
piu() {
  sudo netstat -plan | grep ":$1"
}

function grab() {
  grim "/home/user/posterr_saved/$1.png"
}

# ENVIRONMENT SETTINGS ##########################################
#
# Helps avoid timeouts for large yaml scripts
export DOCKER_CLIENT_TIMEOUT=360
export COMPOSE_HTTP_TIMEOUT=360


##### more custom by matt
#clear
export PATH=$PATH:~/bin
