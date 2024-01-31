ARG base_version=latest 
#3.18.3

FROM alpine:$base_version

LABEL maintainer="Involta LLC"

RUN apk update

## Miscellaneous tools
RUN apk add --no-cache curl fish git ncurses neofetch jq

## Switch to fish shell for further setup
SHELL ["/usr/bin/fish", "-c"]

## Install Tide Prompt for Fish
RUN curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
RUN echo n | fisher install IlanCosman/tide@v5
ENV TERM xterm 
RUN echo 2142211232322y | tide configure

## Setup fish shell
COPY ./resources/* /root/.config/fish/conf.d/
RUN echo neofetch >> /root/.config/fish/config.fish

## Install Terraform
RUN curl -O https://releases.hashicorp.com/terraform/1.7.2/terraform_1.7.2_linux_amd64.zip
RUN unzip terraform_1.7.2_linux_amd64.zip && rm -f terraform_1.7.2_linux_amd64.zip
RUN mv terraform /usr/local/bin/

ENV SHELL "/usr/bin/fish"
ENTRYPOINT [ "/usr/bin/fish" ]