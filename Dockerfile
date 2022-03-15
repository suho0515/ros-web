FROM osrf/ros:noetic-desktop-full

# default setting for ros
RUN /bin/bash -c "apt-get update &&\
    apt-get install -y git &&\
    source /opt/ros/noetic/setup.bash &&\
    mkdir -p ~/catkin_ws/src && cd ~/catkin_ws/src &&\
    cd ~/catkin_ws &&\
    catkin_make &&\
    source devel/setup.bash"

RUN /bin/bash -c "apt-get update &&\
    apt-get install -y python3-tornado python3-pip ros-noetic-rosbridge-suite ros-noetic-web-video-server nginx"