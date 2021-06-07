deploy:
			docker stack deploy --compose-file=mdl-stackfile.yml moodle
rm: 
			docker stack rm moodle
ls: 
			docker service ls

network:	
			docker network create -d overlay traefik-prox
			docker network create -d overlay database

# docker service ps --filter "desired-state=running" 
# Mariadb replication service
