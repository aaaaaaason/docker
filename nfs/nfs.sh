#!/bin/bash

docker run -d \
       	--name my-nfs \
       	--privileged \
	-e SHARED_DIRECTORY=/nfsshare \
	-v /HGST/nfsshare:/nfsshare \
        -v $HOME/Projects/docker/nfs/exports:/etc/exports \
	--net=host \
	itsthenetwork/nfs-server-alpine:latest
