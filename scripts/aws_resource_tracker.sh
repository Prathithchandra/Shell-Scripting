#!/bin/bash

#######################
# Author : Prathith
# Date : 4-01-2024
#######################
# This script is used to track aws resource 
set -x

# Displays s3 buckets
echo "S3 Buckets"
aws s3 ls 

# Displays ec2 instances
echo "Ec2 instances"
aws ec2 describe-instances

# Display IAM list roles role id 
echo "IAM roles"
aws iam list-roles | jq '.Roles[].RoleId'

# Display AWS lambda function name
echo "Lambda functions" 
aws lambda list-functions | jq '.Functions[].FunctionName'

#Here jq is json parser where it just takes the output from lambda functions and displays the name
