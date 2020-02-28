#/bin/sh

docker exec -it `docker ps --filter "label=git-workshop" --format "{{.Names}}"` /bin/zsh
