# aliases
alias dcup="COMPOSE_HTTP_TIMEOUT=10000 docker-compose up"
alias drmi='docker rmi $(docker images --filter "dangling=true" -q --no-trunc)'
alias drmc='docker rm $(docker ps -qa --no-trunc --filter "status=exited")'
alias drmv='docker volume rm $(docker volume ls -q -f "dangling=true")'
alias dcb="docker-compose build"
alias dcl="COMPOSE_HTTP_TIMEOUT=10000 docker-compose logs -f"
alias dcr="docker-compose restart"
alias dcs="docker-compose stop"
alias dexit="docker exec -it"
alias dcp="docker-compose pull"
alias dcpb="docker-compose pull && docker-compose build"
alias r="ehq_reporting.unicorn_1"
alias p="ehq_v2.puma_1"
alias mysql_ehq="docker exec -it ehq_db_1 mysql -u ehquser -pehq321 ehq_development"
alias rrc="docker exec -it ehq_reporting.puma_1 rails c"
alias rlog="docker exec -it ehq_reporting.puma_1 tail -f log/development.log"
alias prc="docker exec -it ehq_v2.puma_1 rails c"
alias plog="docker exec -it ehq_v2.puma_1 tail -f log/development.log"
v2="ehq_v2.puma_1"
rp="ehq_reporting.puma_1" 
Include a link to the ticket, if any.
# Helper functions for using docker with rails
drc() {
    [ $# -eq 0 ] && { echo "\nUsage: $0 app_container_name [-s]\n"; return 1; }
    docker exec -it $1 bundle exec rails c $2;
}

dspec() {
    [ $# -eq 0 ] && { echo "\nUsage: $0 app_container_name file_name\n"; return 1; }
    docker exec -it $1 rspec --color $2 --format documentation;
}

ddlog() {
    [ $# -eq 0 ] && { echo "\nUsage: $0 app_container_name\n"; return 1; }
    docker exec -it $1 tail -f log/development.log;
}

ddb() {
    [ $# -eq 0 ] && { echo "\nUsage: $0 app_container_name mysql -u user_name -p\n"; return 1; }
    docker exec -it $1 mysql $2 $3 $4;
}

dbash() {
    [ $# -eq 0 ] && { echo "\nUsage: $0 app_container_name\n"; return 1; }
    docker exec -it $1 /bin/bash;
}
