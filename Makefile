.PHONY: image
image:
	docker build . -t mechpen/toolbox:latest

.PHONY: release
release:
	docker push mechpen/toolbox:latest
