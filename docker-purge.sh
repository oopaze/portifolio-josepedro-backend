# derruba todos os containers e os delete junto aos volumes
docker-compose down; docker rm -f $(docker ps -a -q); docker volume rm $(docker volume ls -q); 