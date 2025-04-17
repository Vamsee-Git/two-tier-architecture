module "vpc" {
  source = "./modules/vpc"

  name            = "my-vpc"
  cidr_block      = "10.0.0.0/16"
  azs             = ["us-east-1a", "us-east-1b"]
  public_subnets  = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnets = ["10.0.3.0/24", "10.0.4.0/24"]
}

module "security_groups" {
  source          = "./modules/security_groups"
  name            = "my"
  vpc_id          = module.vpc.vpc_id
  web_subnet_cidrs = module.vpc.public_subnets
}

module "web_servers" {
  source         = "./modules/web_servers"
  name           = "my-web"
  instance_count = 2
  ami_id         = "ami-0c55b159cbfafe1f0" # Example AMI
  instance_type  = "t2.micro"
  subnets        = module.vpc.public_subnets
  vpc_id         = module.vpc.vpc_id
  security_group = module.security_groups.web_sg.id
}

module "database" {
  source          = "./modules/database"
  name            = "my-db"
  instance_class  = "db.t2.micro"
  allocated_storage = 20
  db_name         = "mydb"
  db_username     = "admin"
  db_password     = "password"
  subnets         = module.vpc.private_subnets
  vpc_id          = module.vpc.vpc_id
  security_group  = module.security_groups.db_sg.id
}
