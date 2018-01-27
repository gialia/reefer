#!/bin/bash

docker-machine ssh $1 "sudo mount -o remount,rw /sys/fs/cgroup; sudo mkdir -p /sys/fs/cgroup/systemd"

