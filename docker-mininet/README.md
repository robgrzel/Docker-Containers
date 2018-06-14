# NOTES

```powershell
## go to powershell admin

#set display for x-server
set-variable -name DISPLAY -value 192.168.1.103:0.0

## build or pull
#build locally with:
docker build -t docker-mininet E:\Docker-Containers\docker-mininet
#or pull from cloud:
docker pull robgrzel/docker-mininet


#run mininet container as ssh server
docker run -itd -p 3122:22 -p 6633:6633 -p 6653:6653 -p 6640:6640\
           -h mininet --privileged --security-opt seccomp:unconfined\
           -e DISPLAY=$DISPLAY --name mininet-container --dns=8.8.8.8\
           -v E:/tmp/X11-unix:/tmp/.X11-unix -P docker-mininet

#connect by ssh, pass: 1
ssh -X -p 3122 mininet@127.0.0.1


#open firefox on host display
export DISPLAY=192.168.1.103:0.0
firefox 

```
