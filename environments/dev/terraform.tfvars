vpc_name            = "my-vpc"
vpc_cidr_block      = "10.0.0.0/16"
availability_zones  = ["us-west-2a", "us-west-2b"]
public_subnets      = ["10.0.1.0/24", "10.0.2.0/24"]
private_subnets     = ["10.0.3.0/24", "10.0.4.0/24"]

sg_name_prefix      = "my"

web_name_prefix     = "my-web"
web_instance_count  = 2
web_ami_id          = "ami-0c55b159cbfafe1f0" # Example AMI
web_instance_type   = "t2.micro"

db_name_prefix      = "my-db"
db_instance_class   = "db.t2.micro"
db_allocated_storage = 20
db_name             = "mydb"
db_username         = "admin"
db_password         = "password"
