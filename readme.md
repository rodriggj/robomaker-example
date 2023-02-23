# RoboMaker - Demo

## Local Development Environment - MacOS
- [ ] MacBook Pro,  Chip:Apple M1 Pro, Memory: 16GB, OS: Ventura: 13.2.1
- [ ] Brew [Install Instructions](https://docs.brew.sh/Installation)
- [ ] XCode [Install Instructions](https://developer.apple.com/support/xcode/) 
- [ ] Visual Studio Code v1.75.1 [Install Instrctions](https://code.visualstudio.com/docs/setup/mac)
- [ ] Terraform v1.2.9 [Install Instructions](https://developer.hashicorp.com/terraform/downloads)
- [ ] AWS CLI v2.9.9 [Install Instructions](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)
- [ ] Python v3.9.13 [Install Instructions](https://python.land/installing-python) 
- [ ] Docker Desktop v20.10.17 [Install Instructions](https://docs.docker.com/desktop/install/mac-install/)

## Dependencies
- [ ] [Robot Operating System (ROS)](https://www.ros.org/)
> The Robot Operating System (ROS) is a set of software libraries and tools that help you build robot applications. From drivers to state-of-the-art algorithms, and with powerful developer tools, ROS has what you need for your next robotics project. And it's all open source.

## Process

### Install ROS2 

#### Install on Ubuntu Virtual Machine (manual)
1. Go to AWS Console > AWS EC2 > Select the following AMI `Ubuntu Server 22.04 LTS (HVM), SSD Volume Type` > t2.micro
2. Change permission settings to key-pair
3. SSH to EC2 instance
4. Configure the EC2 instance per instructions [here](https://docs.ros.org/en/humble/Installation/Alternatives/Ubuntu-Install-Binary.html)
    + [ ] Set Locale
    + [ ] Setup Resources
    + [ ] Install ROS2 Packages
    + [ ] Sourcing the Setup Script
    + [ ] Test Installation
5. Next Steps [here](https://docs.ros.org/en/humble/Tutorials.html)

> NOTE: If you ran the setup script you will have installed `ros-humble-desktop`, `ros-humble-ros-base`, & `ros-humble-dev-tools`. Depending on your system configuration you may not want to install all three package binaries; you can select the pacakges that deliver the functionality you wish. 

> NOTE: The file location for the source files for the `ros-humble-desktop` can be found in `opt/ros/humble` directory (for example).

> NOTE: In the current configuration, you have to `source` the `setup.bash` script for each terminal session that is opened. To configure this **to not** have to source this file, configure the with the following command. 

```s
gedit ~/.bashrc 
# When the file opens add the following line to this file
source /opt/ros/humble/setup.sh
```

> NOTE: On the Ubuntu AMI, `gedit` **is not** installed on the image. You have to install with the following commands: 
```s
sudo snap install gedit
```

#### Install `rqt_graph`
1. 

## References 
- [ ] [ROS2 Crash Course](https://www.youtube.com/watch?v=Gg25GfA456o)
- [ ] [xCode Version](https://stackoverflow.com/questions/21272479/how-can-i-find-out-if-i-have-xcode-commandline-tools-installed)
- [ ] [rqt_graph](https://roboticsbackend.com/rqt-graph-visualize-and-debug-your-ros-graph/)
- [ ] [ROS Melodic](http://wiki.ros.org/melodic/Installation/Ubuntu)
- [ ] [AWS Robotics Repositories](https://github.com/orgs/aws-robotics/repositories?type=all)
- [ ] [RoboMaker Youtube Vidoe Demo](https://github.com/aws-robotics/aws-robomaker-sample-application-cloudwatch)

## FAQs 
1. If I'm going to install ROS2 locally on a MacOS or Windows Desktop, which installation pacakage should I use. 
> Query google for `ros2 macos build`. You will see from the Humble documentation that you must install the "fat" archive on a MacOS or Windows development workstation. 