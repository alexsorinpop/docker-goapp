# We need golang 1.13 - this is based on debian
FROM golang:1.13

# some defaults in apt-get for working with docker
RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections
RUN apt-get update
RUN apt-get dist-upgrade -y

# application
RUN mkdir -p /opt/goapp
COPY ./ops-interview-task-master/ /opt/goapp
WORKDIR /opt/goapp
RUN make

# env vars
ENV DEMO_APP_ADDR ":8000"
ENV DEMO_REDIS_ADDR "192.168.100.120:6379"

# run command
CMD ["/opt/goapp/demo.bin"]

EXPOSE 8000
