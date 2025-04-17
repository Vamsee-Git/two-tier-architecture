resource "aws_db_instance" "mysql" {
  engine                 = "mysql"
  instance_class         = var.instance_class
  allocated_storage      = var.allocated_storage
  name                   = var.db_name
  username               = var.db_username
  password               = var.db_password
  subnet_ids             = var.subnets
  vpc_security_group_ids = [var.security_group]

  tags = {
    Name = "${var.name}-db"
  }
}
