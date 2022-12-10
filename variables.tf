variable "aws_region" {
    type = string
    default = "us-east-1"
}

variable "name" {
    type = string
    default = "eks-poc-vpc"
  
}

variable "private_subnet" {
    type = list
    default = ["10.0.0.0/25,10.0.0.128/25"]
  
}

variable "public_subnet" {
    type = list
    default = ["10.0.1.0/25,10.1.128.0/25","10.0.2.0/25,10.0.2.128/25","10.0.3.0/25,10.0.3.128/25"]
  }

