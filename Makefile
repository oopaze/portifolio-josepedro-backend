new_backup:
	PGPASSWORD=root pg_dump -Fc --no-acl --no-owner -h localhost -U postgres portifolio_josepedro > app/media/db.dump

restore_heroku_db:


build_docker:
	docker-compose up -d --build
	docker-compose run backend python3 manage.py migrate

purge_docker:
	docker-compose down
	docker rm -f $(docker ps -a -q); 

run:
	cd app && python manage.py runserver 0.0.0.0:8000