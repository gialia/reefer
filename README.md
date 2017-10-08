


Notes:
	- Avoid using Docker for Mac or Docker for Windows, it's an aproximation of a real linux box not a linux box
	- If you want to build on mac or windows, use Docker Toolbox
	- You can build the images with vanilla docker, if you want to run the provisoner object you need packer and ansible installed
	- If your using Docker Toolbox's Boot2Docker image, you have to login to the docker-machine box and remount cgroups and add a folder, on a standard linux box you don't have to do anything and I am working on a pacth to submit.
	  Here are the commands:
	  	docker-machine start default
	  	docker-machine ssh
		sudo -i
		mount -o remount,rw /sys/fs/cgroup
		mkdir -p /sys/fs/cgroup/systemd
		exit
		exit
		eval $(docker-machine env default)
	- When you want to run your systemd image you can use this template:
		docker run -itd --stop-signal=RTMIN+3 --cap-add SYS_ADMIN --tmpfs /run --tmpfs /run/lock -v /sys/fs/cgroup:/sys/fs/cgroup:ro gialia/centos:latest /sbin/init
	- If you dont want to do the --cap-add, you can make a folder under the root hierarchy and mount it as a remount of /sys/fs/cgroup in read only mode (ro). 

