# aws-cloudformation

  my cloudformation stuff
  
    - VPC_Public_Ec2_Centos7_Docker.json : 
      - Creates a vpc
      - Public subnet
      - ec2 (22 and 5000  ports open)
        - Centos 7 ami created from Amazon ami.
      - Install docker an git.
      - download a docker simple app (hello world) that you can reach by doing http://IP:5000

    - VPC_Public_Ec2_Centos7_Docker-ELK.json
      - Creates a VPC
      - Public subnet
      - Ec2 instance with Centos 7
      - Docker, git , ELK (docker), Nginx for balance and proxy_pass.
      - Key componentes:
      	- nginx.conf came from an s3 bucket.
      	- the server_name in default.conf was taking using instance metadata (curl)