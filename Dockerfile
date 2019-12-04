FROM mcr.microsoft.com/azure-cli

RUN apk update && apk add docker && apk add curl

RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl

RUN chmod +x ./kubectl

RUN mv ./kubectl /usr/local/bin/kubectl

CMD ["/bin/sh"]