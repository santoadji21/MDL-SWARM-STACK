deploy:
			docker stack deploy --compose-file=mdl-stackfile.yml moodle
rm: 
			docker stack rm moodle
ls: 
			docker service ls

network:	
			docker network create -d overlay traefik-proxy
			docker network create -d overlay database

whoami:
			docker stack deploy --compose-file=whoami-stack.yml whoami

wn: 
			docker network create -d overlay traefik_default

# docker service ps --filter "desired-state=running" 
