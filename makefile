build:
	@docker build -t cibcapi/rhel-atomic-nodejs:$(version) -t cibcapi/rhel-atomic-nodejs:latest . --no-cache=true
run:
	@docker run -it --rm -p 4001:4001 --name rhel-atomic-nodejs cibcapi/rhel-atomic-nodejs
stop:
	@docker stop rhel-atomic-nodejs
clean: stop
	@docker rm rhel-atomic-nodejs
clean-image: 
	@docker rmi $$(docker images | grep 'cibcapi/rhel-atomic-nodejs')
publish:
	@docker push cibcapi/rhel-atomic-nodejs:$(version)
	@docker push cibcapi/rhel-atomic-nodejs:latest