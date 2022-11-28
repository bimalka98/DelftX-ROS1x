#!/bin/sh -e
# 2022 Bimalka Piyaruwan Thalagala

################################################################################
#	A simple script,                                                       	   #
#       to install/build the dependencies                                      #
################################################################################


install_ros_default () {

    echo
    echo "==========================================================="
	echo "|          Install ROS Noetic Ninjemys (ROS1)             |"
    echo "==========================================================="
    echo

 	# Configure your Ubuntu repositories
	sudo add-apt-repository universe
	sudo add-apt-repository multiverse
	sudo add-apt-repository restricted
	
	# Setup your sources.list
	sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
	
	# Set up your keys
	sudo apt install curl
	curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
	
	# system upgrade
	sudo apt update
	sudo apt upgrade
	
	# Installation: Desktop-Full Install: (Recommended)
	# Everything in Desktop plus 2D/3D simulators and 2D/3D perception packages
	sudo apt install ros-noetic-desktop-full

	# Environment setup: utomatically source the ROS script
	echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc

	# Dependencies for building packages
	sudo apt install python3-rosdep python3-rosinstall python3-rosinstall-generator python3-wstool build-essential

	
}

# main function 
main () {
    
	# installing ROS1 default building
	install_ros_default ()
    
}

main "$@"
