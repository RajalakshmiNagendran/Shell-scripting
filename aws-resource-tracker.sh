#!/bin/bash
##script to fetch aws service data
##list s3 buckets
aws s3 ls
##list users
#aws iam list-users
aws iam list-users | jq ".Users[].UserName"
##list instances
aws ec2 describe-instances | jq ".Reservations[].Instances[].InstanceId"
#aws ec2 describe-instances --region us-east-1 | jq ".Reservations[].Instances[].InstanceId"
#aws ec2 describe-instances
##list lambda functions
aws lambda list-functions
