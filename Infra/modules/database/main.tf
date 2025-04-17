resource "aws_db_subnet_group" "example" {
  name       = "example"
  subnet_ids = var.subnets
  tags = {
    Name = "My DB subnet group"
  }
}

resource "aws_db_instance" "mysql" {
  engine                 = "mysql"
  instance_class         = var.instance_class
  allocated_storage      = var.allocated_storage
  name                   = var.db_name
  username               = var.db_username
  password               = var.db_password
  db_subnet_group_name = aws_db_subnet_group.example.name
  vpc_security_group_ids = [var.security_group]

  tags = {
    Name = "${var.name}-db"
  }
}
