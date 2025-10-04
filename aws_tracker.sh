#!/bin/bash
#############################
#Author: Ashutosh Sanjay Thakur
#Date: 3rd October 2025
#Version : draft
#this script will report the aws report usage
#############################


#AWS S3
#AWS EC2
#AWS Lambda
#AWS IAM Users

#debugging
set -x

# list s3 buckets
echo "list of all s3 instances"
aws s3 ls > resourcetracker
#list EC2 instances
echo "list of all ec2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'  >resourcetracker 

#list aws lamba
echo "list of all aws lambda instances"
aws lambda list-functions   > resourcetracker

#list aws IAM users
echo "list of all aws IAM users"
aws iam list-users   > resourcetracker


