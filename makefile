build:
	@docker build -t glennswest/rhel-minimal-nodejs:$(version) -t glennswest/rhel-minimal-nodejs:latest . --no-cache=true
run:
	@docker run -it --rm -p 4001:4001 --name rhel-minimal-nodejs glennswest/rhel-minimal-nodejs
stop:
	@docker stop rhel-minimal-nodejs
clean: stop
	@docker rm rhel-minimal-nodejs
clean-image: 
	@docker rmi $$(docker images | grep 'glennswest/rhel-minimal-nodejs')
publish:
	@docker push minimal/rhel-atomic-nodejs:$(version)
	@docker push minimal/rhel-atomic-nodejs:latest
