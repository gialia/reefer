
Reefer
======

Why let your apps spoil during run-time, in nasty standard containers, when you can have a reefer container? 


How to get going:
-----------------

If your using Docker Toolbox's and the Boot2Docker image:
    Here are the commands:
	# go to reefer/scripts

    # start up your default docker machine
	docker-machine start default

	# run the docker prime script
	./docker.prime.sh default

	# export you env variables for docker client to see the server
	eval $(docker-machine env default)

- When you want to run your systemd image you can use this template:
		docker run -itd --stop-signal=RTMIN+3 --cap-add SYS_ADMIN --tmpfs /run --tmpfs /run/lock -v /sys/fs/cgroup:/sys/fs/cgroup:ro gialia/centos:latest /sbin/init

- If you dont want to do the --cap-add, you can make a folder under the root hierarchy and mount it as a remount of /sys/fs/cgroup in read only mode (ro). 

