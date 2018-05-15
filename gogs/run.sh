#!!!!중요 - 22번 포트를 바꾸지말것. 리스토어 안됨.
docker volume create --name gogs-data
docker run --name gogs -p 22:22 -p 10080:3000 -v "$PWD/data":/data gogs/gogs
docker start gogs

