init:
	docker-compose up -d

reinit:
	docker-compose down
	docker-compose up -d

rm stop down:
	docker-compose down
