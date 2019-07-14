RESTYPID=`docker ps | grep wcrbrm/openresty | cut -f1 -d' '`

build:
	docker build -t wcrbrm/openresty .
start: 
	docker run -d -p8111:80 wcrbrm/openresty
sh:
	docker exec -it ${RESTYPID} sh
stop:
	docker kill ${RESTYPID}
logs:
	docker logs ${RESTYPID}
metrics:
	docker exec -it ${RESTYPID} wget -O - http://localhost/metrics
www:
	docker exec -it ${RESTYPID} wget -O - http://localhost/
