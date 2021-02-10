#!/bin/bash
python detect.py --weights runs/train/exp2/weights/best.pt --source rtsp://don:d344831@10.0.0.235:554/ch01/1 --device cpu

