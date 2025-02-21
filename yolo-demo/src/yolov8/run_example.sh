#!/bin/bash

./build/camera_demo -i 23 -w 640 -h 640 -t 4 -f 60 -m ./model/yolov8n.rknn -l ./model/coco_80_labels_list.txt
