#! /usr/bin/env bash

################################# FUNCTIONS #################################
################################
# Setup ROS master and slave addresses
# Arguments:
# - $1 (String) - Shell Type
# - $2 (String) - This PC is the master or slave
# - $3 (IP) - This IP is the master's IP address
# - $4 (IP) - This IP is the slave's IP address
################################

## add turtlebot model env

function ENVConfig_fn() {
    SHELL=$(echo ${1} | tr [A-Z] [a-z])
    echo "export TURTLEBOT3_MODEL=waffle" >>/home/$USER/.${SHELL}rc
   
}

#################################### MAIN ####################################
ENVConfig_fn "bash" ${ROS_TYPE} ${ROS_MASTER_IP} ${ROS_SLAVE_IP}
ENVConfig_fn "zsh" ${ROS_TYPE} ${ROS_MASTER_IP} ${ROS_SLAVE_IP}
