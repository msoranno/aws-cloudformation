# mipiri.com

## CloudFormation file
	
	### Cf_OpenS.yaml

		- 1 Vpc
		- 1 Public Subnet
		- 3 CentOs
			- 1 Master 8gbRam
			- 2 Nodes 4gbRam
	### Run
		 - run auto_stack.sh script will help.

		  ./auto_stack.sh <profile> <action>

		  The profile must be configured in your .aws/config file,like so

		  [profile myprofile]
		  output = json
		  region = eu-central-1