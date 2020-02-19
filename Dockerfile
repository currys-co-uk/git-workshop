FROM alpine

RUN apk add --no-cache git vim zsh curl

RUN adduser -D -h /home/student -s /usr/bin/zsh student

USER student
WORKDIR /home/student

VOLUME /home/student/git

RUN sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

RUN sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="agnoster"/' /home/student/.zshrc

ENTRYPOINT ["zsh"]
