resource "aws_security_group" "db_sg" {
  vpc_id = var.vpc_id

  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = var.web_subnet_cidrs
  }

    = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.name}-db-sg"
  }
}

resource "aws_db_instance" "mysql" {
  engine            = "mysql"
  instance_class    = var.instance_class
  allocated_storage = var.allocated_storage
  name              = var.db_name
  username          = var.db_username
  password          = var.db_password
  subnet_ids        = var.subnets
  vpc_security_group_ids = [aws_security_group.db_sg.id]

  tags = {
    Name = "${var.name}-db"
  }
}
