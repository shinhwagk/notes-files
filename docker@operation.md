-- delete none images
```sh
docker images | grep '<none>' | awk '{print $3}' | while read id; do docker rmi $id & done
```