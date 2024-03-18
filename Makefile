all: delete lazyBuild

lazyBuild:
	docker build -t lrx .
	docker run --name lr3container -d  -p 80:7878 lrx

delete:
	# docker images -a
	# docker rmi lrx  #image
	# docker ps -a  #container

	docker stop $(shell docker ps -a -q)
	docker rm $(shell docker ps -a -q)

	docker rmi $(shell docker images -a -q)

# rm  ~/.docker/config.json 