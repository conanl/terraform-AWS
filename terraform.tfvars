//AWS
region  = "us-east-1"
environment = "Devlopment"

/* 1. Module create-vpc */
/* CIDR Calculator https://account.arin.net/public/cidrCalculator */
/* Create VP --> Create Private Subnet --> Create Private SUbnet --> Create Internet gateway --> 
Create NAT(Should be in public subnet) --> Create 2 route tables --> Public Route(Add internet gateway)
--> Private Route (Add NAT)*--> Attach subnet to the route tables */
vpc_cidr = "10.0.0.0/16"
public_subnets_cidr = ["10.0.1.0/24"]
private_subnets_cidr = ["10.0.10.0/24"]
availability_zones = "us-east-1a"


/* 2. Module create-ec2 */