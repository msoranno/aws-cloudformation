#!/bin/bash


if [ "$#" -eq 2 ]; then
	profile=$1
	action=$2 
	v_stackName='ocstack'
	v_templateFile='Cf_OpenS.yaml'
	v_key='key_08062017'
	v_AvailabilityZone='eu-central-1b'

	if [ "$action" == "create" ] || [ "$action" == "update" ]; then
		aws cloudformation --profile $profile $action-stack --stack-name $v_stackName \
		--template-body file://$v_templateFile \
		--parameters \
			ParameterKey=KeyName,ParameterValue=$v_key \
			ParameterKey=AvailabilityZone,ParameterValue=$v_AvailabilityZone
	fi
	

	if [ "$action" == "describe" ] ; then
		aws cloudformation --profile $profile $action-stacks --stack-name $v_stackName
	fi
	if [ "$action" == "delete" ]; then
		aws cloudformation --profile $profile $action-stack --stack-name $v_stackName
	fi
	if [ "$action" == "events" ]; then
		aws cloudformation --profile $profile describe-stack-events --stack-name $v_stackName
	fi
else
	echo 
	echo "Faltan Paràmetros:"	
	echo
	echo "sh auto_stack.sh [aws_profile] [create, update, describe, delete , events]"
	echo
fi