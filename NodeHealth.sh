#!/bin/bash

##################################
#
# Author: Sai Krishna Medishetty
#
# Date: 07/21/2023
#
# This script outputs the node health
#
# version: V1 
##################################

set -x #debug mode
set -e # exit the script when there is an error
set -o pipefail
df -h

free -g

nproc


ps -ef #gives you all processors list which are running

ps -ef | grep "amazon"   # gives you amazon processors list

date | echo "this is"  # standard command. Pipe will not take this input from date

ps -ef | grep amazon | awk -F" " '{print $2}' #to retrive specific part the output

curl "url of the logfile store in google storage or S3 bucket etc" | grep ERROR #retrieving info from internet

wget "url of the logfile store in google storage or S3 bucket etc" #dowlaod the file from internet

