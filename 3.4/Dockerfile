FROM alpine:3

WORKDIR /usr/local/bin

COPY . .

RUN apk update
RUN apk add git
RUN apk add docker

RUN chmod +x deploy.sh

CMD [ "./deploy.sh", "https://github.com/4925k/cicd-example" ]