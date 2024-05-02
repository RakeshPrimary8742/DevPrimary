#!/bin/bash



echo "Below is storage"
aws s3 ls


echo "Below is IAM user"

aws iam list-users | jq '.Users[].UserName'

echo "Below is my EC2"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

echo "Below is Ec2 status"
aws ec2 describe-instance-status | jq '.InstanceStatuses[].InstanceState.Name'






