#!/bin/bash

docker-compose up -d

docker run -it --rm --name my-ansible --network ansible_default -v "$(pwd)/workspace:/workspace" -w /workspace williamyeh/ansible:ubuntu18.04 /bin/bash