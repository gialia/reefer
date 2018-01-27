#!/bin/bash


docker ps | tail -n +2 | awk '{print $1}' | xargs docker stop



