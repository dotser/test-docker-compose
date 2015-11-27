
all:
	VBoxManage controlvm default natpf1 "flask-server,tcp,127.0.0.1,5000,,5000"
	docker rm -f test || true
	docker build -t test .
	docker run -d -P --name test test
	docker exec -it -t test curl localhost:5000
