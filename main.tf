# Author  - John Knepper
# Date    - Dec 4th, 2017
# File    - terraform/main.tf
# This declares / includes all modules to be used with TF

provider "aws" {
  region     = "${var.region}"
  access_key = "${var.aws_access_key_id}"
  secret_key = "${var.aws_secret_access_key}"
}

module "vpc" {
  source = "./vpc"

  environment = "${var.environment}"

}

module "igw" {
  source = "./igw"

  vpc_id = "${module.vpc.vpc_id}"
  environment = "${var.environment}"

}

module "subnet" {
  source = "./subnet"

  vpc_id = "${module.vpc.vpc_id}"
  environment = "${var.environment}"

  public_subnet_id = "${module.subnet.public_subnet_id}"

}

module "routes" {
  source = "./routes"

  vpc_id = "${module.vpc.vpc_id}"
  environment = "${var.environment}"
 
  gateway_id = "${module.igw.gateway_id}"

}

module "nat" {
  source = "./nat"

  vpc_id = "${module.vpc.vpc_id}"
  environment = "${var.environment}"
 
  public_subnet_id = "${module.subnet.public_subnet_id}"
  nat_id = "${module.nat.nat_id}"

}
