from ultralytics import YOLO
# Load YOLOv8 model
model = YOLO('yolov8n.pt')  # 'n' = nano model, fastest
# Run inference on an image
results = model('/home/test/i.png')  # replace with your image path

# Inspect results
for r in results:
    for box in r.boxes:
        # Bounding box coordinates
        x1, y1, x2, y2 = box.xyxy[0].tolist()

        # Confidence score
        conf = float(box.conf[0])

        # Class ID
        cls_id = int(box.cls[0])

        # Class name from the model
        cls_name = model.names[cls_id]

        print(f"Class: {cls_name}, Conf: {conf:.2f}, BBox: ({x1:.0f}, {y1:.0f}, {x2:.0f}, {y2:.0f})")
