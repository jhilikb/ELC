# In this Experiential Learning Activity we will explore the process of deploying a model on an edge device.

We will use Jetson for the purpose. We will go through the following main points:-  

Embedded devices overview.   
How to connect to a Jetson  
How to start using dockers in Jetson  
How to run your application  

1. Follow the instructions to connect to the jetson
2. Clone the repository using **git clone https://github.com/jhilikb/ELC.git** on the Desktop of Jetson, follow instructions given in test/a and organize the files
3. Pull the docker
4. Run the docker
5. Run the script set.sh in /home/test folder to finish your settings
6. Run mytest.py in /home/yolo10 folder
7. Make changes to the default application w.r.t your project
8. Some patches (comment out) required in the code: ultralytics/ultralytics/yolo/utils/checks.py, ultralytics/yolo/utils/torch_utils.py,ultralytics/ultralytics/nn/tasks.py (thop)

