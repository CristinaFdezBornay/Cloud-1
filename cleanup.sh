#!/bin/bash

sudo rm -rf /home/AdriCristi✨✨RockStart/✨✨RockStart✨✨
docker stop $(docker ps -aq)
docker rm $(docker ps -aq)
docker volume rm $(docker volume ls -q)
rm -f /bin/wp-cli
