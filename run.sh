#!/bin/sh

PURPLE='\033[0;35m'
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'

printf "\033c"
printf "${GREEN}Starting..${NC}\n"
sleep 1
printf "\033c"

DIR=$PWD # get current dir
# if current dir is /root print ~
if [ "$PWD" = "/root"* ]; then
    DIR="~${PWD#/root}"
fi

printf "\033c"
printf "${GREEN} _______                         _______           __              ${NC}\n"
printf "${GREEN}|   |   |.-----.-----.-----.    |    |  |.-----.--|  |.-----.-----.${NC}\n"
printf "${GREEN}|       ||  _  |  _  |     |    |       ||  _  |  _  ||  -__|__ --|${NC}\n"
printf "${GREEN}|__|_|__||_____|_____|__|__|    |__|____||_____|_____||_____|_____|${NC}\n"
printf "${GREEN}                                                                   ${NC}\n"
printf "${GREEN}              Made By Duck: For More info my discord is jakethedev.              ${NC}\n"
printf "${GREEN}${NC}\n"
printf "                                                                                               \n"
printf "root@MyVPS:${DIR}#                                                                             \n"

run_cmd() {
    read -p "root@MyVPS:$DIR# " CMD
    eval "$CMD"
    
    # Update DIR after executing command
    DIR=$PWD
    if [ "$PWD" = "/root"* ]; then
        DIR="~${PWD#/root}"
    fi
    
    printf "root@MyVPS:$DIR# \n"
    run_user_cmd
}

run_user_cmd() {
    read -p "user@MyVPS:$DIR# " CMD2
    eval "$CMD2"
    
    # Update DIR after executing command
    DIR=$PWD
    if [ "$PWD" = "/root"* ]; then
        DIR="~${PWD#/root}"
    fi
    
    printf "root@MyVPS:$DIR# \n"
    run_cmd
}

run_cmd
