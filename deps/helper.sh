#!/usr/bin/env bash

if ! command -v task &> /dev/null; then
    echo -e "\033[31m###########################################################################################\033[0m"
    echo -e "\033[31m##                                                                                       ##\033[0m"
    echo -e "\033[31m## Go Task is not installed, please execute the following command to install go-task:    ##\033[0m"
    echo -e "\033[31m##                                                                                       ##\033[0m"
    echo -e "\033[31m##\033[0m   \033[32msh -c \"\$(curl --location https://taskfile.dev/install.sh)\" -- -d -b /usr/local/bin\033[0m  \033[31m##\033[0m"
    echo -e "\033[31m##                                                                                       ##\033[0m"
    echo -e "\033[31m###########################################################################################\033[0m"
    exit 1
fi

task
