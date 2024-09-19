variable "project_name" {
  default = "roboshop"
}

variable "sg_name" {
  default = "allow_all"
}

variable "sg_description" {
  default = "allowing all ports from internet"
}


variable "cidr_block" {
  default = "10.0.0.0/16"
}

variable "common_tags" {
  default = {
    Project = "Roboshop"
    Environment = "DEV"
    Terraform = true
  }
}

variable "vpc_tags" {
  default = {
    Name = "Roboshop"
  }
}

variable "sg_tags" {
  default = {
    Name = "Roboshop"
  }
}

variable "igw_tags" {
  default = {
    Name = "Roboshop"
  }
}

variable "public_subnet_cidr" {
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet_cidr" {
  default = ["10.0.11.0/24", "10.0.12.0/24"]
}

variable "database_subnet_cidr" {
  default = ["10.0.21.0/24", "10.0.22.0/24"]
}

variable "sg_ingress_rules" {
    type = list
    default = [
        {   
            description      = "allowing all traffic"
            from_port        = 0
            to_port          = 0
            protocol         = -1
            cidr_blocks      = ["0.0.0.0/0"]
        }
    ]
}

variable "instances" {
  default = {
    MongoDB = "t3.medium"
    Catalogue = "t2.micro"
    Redis = "t2.micro"
    Cart = "t2.micro"
    User = "t2.micro"
    Mysql = "t3.medium"
    Payment = "t2.micro"
    Shipping = "t2.micro"
    Web = "t2.micro"
    RabbitMQ = "t2.micro"
  }
}

variable "zone_name" {
  default = "vignanlabs.online"
}