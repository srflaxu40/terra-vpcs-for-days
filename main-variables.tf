# Author  - John Knepper
# Date    - Dec 4th, 2017
# File    - terraform/main-variables.tf
# This holds our variables for main.tf

variable "region" {}
variable "aws_access_key_id" {}
variable "aws_secret_access_key" {}
variable "environment" {}

variable "az_one" {}
variable "az_two" {}
variable "zone_id" {}

variable "security_group_id" {}
variable "subnet_one" {}
variable "subnet_two" {}
variable "vpc_id" {}

variable "date" {}

