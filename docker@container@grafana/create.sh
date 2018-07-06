docker volume create grafana

# user id 472
docker run -d \
  --name=grafana \
  -p 3000:3000 \
  -v /etc/localtime:/etc/localtime \
  -v grafana:/var/lib/grafana \
  grafana/grafana:5.1.2

