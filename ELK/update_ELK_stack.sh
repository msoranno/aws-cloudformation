aws cloudformation update-stack --stack-name stackELK --template-body file://VPC_Public_Ec2_Centos7_Docker-ELK.json --parameters ParameterKey=KeyName,ParameterValue=key_08062017 ParameterKey=SSHLocation,ParameterValue=0.0.0.0/0 ParameterKey=EC2InstanceType,ParameterValue=t2.large