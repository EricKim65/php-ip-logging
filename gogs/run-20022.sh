docker volume create --name gogs-data
docker run --name gogs -p 10022:22 -p 10080:3000 -v gogs-data:/data gogs/gogs
docker start gogs
