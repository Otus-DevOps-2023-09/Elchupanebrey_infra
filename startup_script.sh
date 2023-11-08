#!/bin/bash
yc compute instance create \
  --name reddit-app2 \
  --zone ru-central1-a \
  --hostname reddit-app2 \
  --memory=2 \
  --platform=standard-v3 \
  --create-boot-disk image-folder-id=standard-images,image-family=ubuntu-1604-lts,size=10GB \
  --network-interface subnet-name=default-ru-central1-a,nat-ip-version=ipv4 \
  --metadata-from-file user-data=metadata.yaml
