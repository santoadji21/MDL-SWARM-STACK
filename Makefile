####################################################################
# Authors: Ahmad Aji Santoso
# Email: ahmad21@student.ub.ac.id
####################################################################

deploy:
			docker stack deploy --compose-file=mdl-stackfile.yml moodle
rm: 
			docker stack rm moodle
ls: 
			docker service ls
logs:		
			docker service logs $(id)
network:	
			docker network create -d overlay traefik-proxy
			docker network create -d overlay database

# docker service ps --filter "desired-state=running" 
