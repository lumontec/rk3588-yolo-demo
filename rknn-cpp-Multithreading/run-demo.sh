#!/bin/bash

export LD_LIBRARY_PATH=${TOOL_CHAIN}/lib64:/usr/local/lib:$LD_LIBRARY_PATH

./install/rknn_yolov5_demo_Linux/rknn_yolov5_demo ./install/rknn_yolov5_demo_Linux/model/RK3588/yolov5s-640-640.rknn /dev/video23
