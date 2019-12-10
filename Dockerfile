FROM docker:dind

RUN \
  apk update && \
  apk add bash py-pip curl && \
  apk add --virtual=build gcc libffi-dev musl-dev openssl-dev python3-dev make && \
  apk add --no-cache --update python3 && \
  pip3 install --upgrade pip setuptools && \
  pip --no-cache-dir install -U pip && \
  pip --no-cache-dir install azure-cli && \
  apk del --purge build

RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl

RUN chmod +x ./kubectl

RUN mv ./kubectl /usr/local/bin/kubectl

CMD ["/bin/sh"]
