docker volume create gitlab-etc
docker volume create gitlab-opt
docker volume create gitlab-log

docker run -d \
  --name gitlab \
  --restart always \
  --publish 443:443 --publish 80:80 --publish 23:22 \
  -v gitlab-etc:/etc/gitlab \
  -v gitlab-log:/opt/gitlab/logs \
  -v gitlab-opt:/var/opt/gitlab \
  -v /etc/localtime:/etc/localtime \
  gitlab/gitlab-ce:10.7.3-ce.0

# admin usernmae: root
# admin password: 00000000