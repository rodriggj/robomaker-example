#!/bin/bash

# ---------------------
# Setup locale
# ---------------------
locale
sudo apt update && sudo apt install locales
sudo locale-gen en_US en_US.UTF-8
sudo update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
export LANG=en_US.UTF-8

# ---------------------
# Verify locale settings
# ---------------------
locale 

# ---------------------
# Setup Sources
# ---------------------
# Add ROS2 Apt Repository to host
sudo apt install software-properties-common
sudo add-apt-repository universe

# Add ROS2 GPG Key
sudo apt update && sudo apt install curl
sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg

# Add repo to source list
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(. /etc/os-release && echo $UBUNTU_CODENAME) main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null

# ---------------------
# Install ROS 2 Packages
# ---------------------
sudo apt update
sudo apt upgrade -y

# Desktop Install
sudo apt install ros-humble-desktop -y

# Bare Bones Install: Communication libraries, message packages, command line tools. No GUI tools.
sudo apt install ros-humble-ros-base -y

# Development tools: Compilers and other tools to build ROS packages
sudo apt install ros-dev-tools -y

# ---------------------
# Source the Startup Script
# ---------------------
source /opt/ros/humble/setup.bash

# ---------------------
# Test the installation
# ---------------------
# In one terminal session 
source /opt/ros/humble/setup.bash
ros2 run demo_nodes_cpp talker

# In a different terminal session
source /opt/ros/humble/setup.bash
ros2 run demo_nodes_py listener