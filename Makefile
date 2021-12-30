new_backup:
	PGPASSWORD=root pg_dump -Fc --no-acl --no-owner -h localhost -U postgres -d portifolio_josepedro -f app/media/backups/db.dump

restore_heroku_db:
	heroku pg:backups:restore --app backend-josepedrofotografias --confirm backend-josepedrofotografias 'https://github.com/oopaze/portifolio-josepedro-backend/blob/developer/app/media/backups/db.dump?raw=true'

build_docker:
	docker-compose up -d --build
	docker-compose run backend python3 manage.py migrate

purge_docker:
	docker-compose down
	docker rm -f $(docker ps -a -q); 

run:
	cd app && python manage.py runserver 0.0.0.0:8000