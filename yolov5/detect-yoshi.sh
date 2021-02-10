#!/bin/bash
source ~/miniconda3/etc/profile.d/conda.sh
conda activate yolov5a
python detect-yoshi.py --weights best-yoshi.pt --source frame.jpg --conf-thres 0.60 --project 'inference' --save-txt --save-conf --name 'output' --exist-ok --device 0

