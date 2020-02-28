### Usage info

If you are already using zsh with OhMyZsh extention, then skip all the setup steps.
Otherwise:
  * To start the zsh container, run `docker-compose up`
  * To connect to it under Mac or Linux, run `./connect.sh` script. Under windows execute it's content, which is
      ```docker exec -it `docker ps --filter "label=git-workshop" --format "{{.Names}}"` /bin/zsh```
