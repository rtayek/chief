docker build -t tf .
docker container rm -f tf1
docker container run --gpus 0 -dit --name tf1 tf bash
docker ps -a
docker exec -it tf1 bash