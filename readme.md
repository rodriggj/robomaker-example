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
- [ ] Set Locale
- [ ] Setup Resources
- [ ] Install ROS2 Packages
- [ ] Sourcing the Setup Script
- [ ] Test Installation
5. Next Steps [here](https://docs.ros.org/en/humble/Tutorials.html)


## References 
- [ ] [ROS2 Crash Course](https://www.youtube.com/watch?v=Gg25GfA456o)
- [ ] [xCode Version](https://stackoverflow.com/questions/21272479/how-can-i-find-out-if-i-have-xcode-commandline-tools-installed)

## FAQs 
1. If I'm going to install ROS2 locally on a MacOS or Windows Desktop, which installation pacakage should I use. 
> Query google for `ros2 macos build`. You will see from the Humble documentation that you must install the "fat" archive on a MacOS or Windows development workstation. 