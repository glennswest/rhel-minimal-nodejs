build:
	@docker build -t cibcapi/rhelatomic-nodejs:$(version) -t cibcapi/rhelatomic-nodejs:latest . --no-cache=true
run:
	@docker run -it --rm -p 4001:4001 --name rhelatomic-nodejs cibcapi/rhelatomic-nodejs
stop:
	@docker stop rhelatomic-nodejs
clean: stop
	@docker rm rhelatomic-nodejs
clean-image: 
	@docker rmi $$(docker images | grep 'cibcapi/rhelatomic-nodejs')
publish:
	@docker push cibcapi/rhenatomic-nodejs:$(version)
	@docker push cibcapi/rhelatomic-nodejs:latest