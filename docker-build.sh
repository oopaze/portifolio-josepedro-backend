# sobe container docker e roda o migrate no conteiner web
docker-compose up -d --build; docker-compose run backend python3 manage.py migrate