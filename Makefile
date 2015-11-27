
all:
	docker rm -f test
	docker build -t test .
	docker run -d -P --name test test
	docker exec -it -t test curl localhost:5000
