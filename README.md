## This is an implemenation of 3 Tier achitecture resources

This approach allows reusabilty by adding/selecting environment based config files

- configs <br>
        This folder contains <br>
                config files - example - dev-config.config <br>
                key-pair <br>
                userdata that can be used at launch <br>

- modules  <br>
        This folder contains various modules <br>
        1- db - for spining up a RDS instance <br>
        2- ec2 - for spinning up an app server instance <br>
        3- network - for spinning up VPC, subnets, IG, Security  Groups 


<i>The config can be enhanced by adding more resources like LaunchConfig, ASG etc</i>

- utils <br>
        Contains python script to query Meta-data

## How to run 

1- Install terraform <br>
    sudo yum install -y yum-utils
    sudo yum -y install terraform

2- Set Up AWS creds

3- Terraform Initiate <br>
    terraform init -backend-config=configs/dev-config.conf -backend=true

4- Terrafom Plan<br>
    terraform plan -backend-config=configs/dev-config.conf

5- Terrafom Apply <br>
    terraform apply -backend-config=configs/dev-config.conf

