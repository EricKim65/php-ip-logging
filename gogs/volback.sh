docker run -it -v gogs-data:/data -v /tmp:/backup  gogs/gogs \
    tar -cvf /backup/gogs-data.tar /data
