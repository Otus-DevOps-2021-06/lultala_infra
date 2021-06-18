#!/bin/bash

yc compute instance create \
  --name reddit-full-vm \
  --zone ru-central1-a \
  --create-boot-disk name=disk1,size=15,image-id=fd8ta1u3fg29kjc7vjfm \
  --public-ip \
  --ssh-key ~/.ssh/appuser.pub
