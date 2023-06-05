.PHOHY : build run exec


build:
	docker build -t sanix-darker/jira-cli:latest -f ./Dockerfile .

run:
	docker run -it --rm --name jira-cli-darker sanix-darker/jira-cli:latest

exec:
	docker exec -it jira-cli-darker sh
