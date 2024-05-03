#!/bin/bash

echo "Below is ec2"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

echo "Below is Ec2 status"

 aws ec2 describe-instance-status | jq '.InstanceStatuses[].InstanceState.Name'

 echo "Below is Ec2 storage"

 aws s3 ls


 echo "Below is IAM user"

 aws iam list-users | jq '.Users[].UserName'
 


