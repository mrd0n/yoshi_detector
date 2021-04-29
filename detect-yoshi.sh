#!/bin/bash
source ~/miniconda3/etc/profile.d/conda.sh
conda activate yolov5a

until python detect-yoshi.py --weights best-yoshi.pt --source frame.jpg --conf-thres 0.60 --project 'inference' --save-conf --name 'output' --exist-ok --device cpu ; do
    echo "Detection script exited with exit code $?.  Respawning.." >&2
    sleep 5
done
