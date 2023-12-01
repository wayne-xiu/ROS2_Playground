#! /bin/bash
FOLDER=${1:-/media/wayne/Data/Code/ROS2_playground/data}

IAMGE_NAME="ros2_humble:latest"

xhost +local:root

docker run -it --privileged \
    --net=host \
    --volume="/dev:/dev" \
    --volume="${HOME}/.Xauthority:/root/.Xauthority:rw" \
    --env="DISPLAY" \
    --env="QT_X11_NO_MITSHM=1" \
    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    --volume="/etc/localtime:/etc/localtime:ro" \
    -v "$FOLDER:/data" \
    ${IAMGE_NAME}
