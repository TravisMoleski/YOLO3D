# python inference.py --weights yolov5s.pt  --source eval/vanLeftLeo --device 0 --reg_weights weights/resnet18.pkl  --model_select resnet18 --show_result --calib_file eval/camera_cal/front_6mm_intrinsics.yaml
# python liveRun.py --weights yolov5s.pt  --source video/leftLeo/uptown6mm.mp4 --device 0 --reg_weights weights/resnet18.pkl  --model_select resnet18 --show_result --calib_file eval/camera_cal/front_6mm_intrinsics.yaml --imgsz 800

# python liveRun.py --weights yolov5s.pt  --source trimmed_video/leftLeo.avi --device 0 --reg_weights weights/resnet18.pkl  --model_select resnet18 --show_result --calib_file eval/camera_cal/front_6mm_intrinsics.yaml

python rosRun.py --weights yolov5s.pt  --source /apollo_ros_bridge/cyberrt_ros/front_6mm/image --device 0 --reg_weights weights/resnet18.pkl  --model_select resnet18 --calib_file eval/camera_cal/front_6mm_intrinsics.yaml --imgsz 480

# python liveRun.py --weights yolov5s.pt  --source video/leftLeo/uptown6mm.mp4  --device 0 --reg_weights weights/resnet18.pkl  --model_select resnet18 --show_result --calib_file eval/camera_cal/front_6mm_intrinsics.yaml --save_result --output_path /home/travis/Work/YOLO/yolo3d/TM_YOLO3D/YOLO3D/output


# python liveRun.py --weights yolov5s.pt  --source video/leftLeo/uptown6mm.mp4  --device 0 --reg_weights weights/resnet18.pkl  --model_select resnet18 --show_result --calib_file eval/camera_cal/front_6mm_intrinsics.yaml --imgsz 800 --save_result --output_path /home/travis/Work/YOLO/yolo3d/TM_YOLO3D/YOLO3D/output