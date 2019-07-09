


variable "vpc_id" {
    description = "VPC to connect to, used for a security group"
    type = "string"
}

variable "security_groups" {
    description = "List of security group ids to be allowed"
    type = "string"
}

variable "subnets" {
    description = "List of vpc subnets"
    type = "string"
}

variable "log_bucket_name" {
    description = "Name of the S3 bucket for VPC logs"
    type = "string"
}


variable "prefix" {
    description = "a prefix for resources to be identified"
}


// 
// Tags 
//

variable "name" {
    default = "generic-ec2"
}

variable "project" {
    default = "aws-cert"
}


variable "owner" {
    default = "icullinane"
}


variable "environment" {
    default = "dev"
}

