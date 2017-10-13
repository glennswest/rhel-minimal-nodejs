build:
	@docker build -t dineshalapati/rhel-atomic-nodejs:$(version) -t dineshalapati/rhel-atomic-nodejs:latest . --no-cache=true
run:
	@docker run -it --rm -p 4001:4001 --name rhel-atomic-nodejs dineshalapati/rhel-atomic-nodejs
stop:
	@docker stop rhel-atomic-nodejs
clean: stop
	@docker rm rhel-atomic-nodejs
clean-image: 
	@docker rmi $$(docker images | grep 'dineshalapati/rhel-atomic-nodejs')
publish:
	@docker push dineshalapati/rhel-atomic-nodejs:$(version)
	@docker push dineshalapati/rhel-atomic-nodejs:latest