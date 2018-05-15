docker run -it -v gogs-data:/data -v /tmp:/backup gogs/gogs \
    sh -c "rm -rf /data/* /data/..?* /data/.[!.]* ; tar -C / -xvf /backup/gogs-data.tar"
