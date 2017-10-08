#!/bin/bash
docker run -itd --stop-signal=RTMIN+3  gialia/alpine:latest /sbin/init 
