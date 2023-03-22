image = beidongjiedeguang/chatgpt-web:latest
build:
	docker build -t $(image) .


filename = chatgpt_web.tar.gz
save:
	docker save $(image) |gzip > $(filename)

load:
	docker load -i $(filename)

send:
	croc send $(filename)
