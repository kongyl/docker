sudo podman run -d --name pandora -e PANDORA_SERVER=0.0.0.0:8081 -e PANDORA_TOKENS_FILE=/root/token -p 8081:8081 -v /home/kongyl/Test/pandora/token:/root/token docker.io/pengzhile/pandora:1.1.18
