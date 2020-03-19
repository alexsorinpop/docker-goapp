# docker-goapp
```
# Build image:
# put 'Dockerimage' and 'docker-compose.yml' outside 'ops-interview-task-master' directory
sudo docker build --no-cache -t goapp .

## if you want to run the app on it's own
## sudo docker run -d -p 8000:8000 goapp:latest

sudo docker-compose build
sudo docker-compose create
sudo docker-compose up -d
```
