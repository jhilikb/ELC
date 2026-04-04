# In this Experiential Learning Activity we will explore the process of deploying a model on an edge device.

We will use Jetson for the purpose. We will go through the following main points:-  

Embedded devices overview.   
How to connect to a Jetson  
How to start using dockers in Jetson  
How to run your application  

1. Follow the instructions in ELC.pdf Experiment 1,Step 1 to connect to the jetson. If you dont have Ubuntu check the options provided for Windows. 
2. Clone the repository using **git clone https://github.com/jhilikb/ELC.git** on the Desktop of Jetson (make sure you are in /home/nvidia/Desktop),
    follow instructions given in test/a file in your ELC folder and organize the files. Recall you can download the files from the given drive link
   on your laptop, then use scp for putting it in your /home/nvidia/Desktop/ELC/test folder on your jetson.
4. Pull the docker as given in ELC.pdf Experiment 3,Step 1
5. Run the docker as given in ELC.pdf Experiment 3,Step 1 but without the --rm option
6. Run the script set.sh in /home/test folder to finish your settings
   cd /home/test; sh set.sh  
8. Run mytest.py in /home/ultralytics folder
   cd /home/test; python3 mytest.py  

   You are able to run an Object Detection task on your kit. Remember to follow Step 3,4,5 in ELC.pdf Experiment 3 everytime you exit the docker.  
10. Make changes to the default application w.r.t your project
11. Some patches (lines to be commented out) required in the code:
   nano ultralytics/yolo/utils/checks.py (display)  
   nano ultralytics/yolo/utils/torch_utils.py (thop)  
   nano ultralytics/yolo/utils/__init__.py  (sentry-sdk line 467)  
   nano ultralytics/nn/tasks.py (thop)  
   export PYTHONIOENCODING=utf-8  
   nano ultralytics/yolo/utils/callbacks/base.py (tensorboard)

