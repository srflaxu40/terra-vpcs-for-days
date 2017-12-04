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

}

module "nat" {
  source = "./nat"

  vpc_id = "${module.vpc.vpc_id}"
  environment = "${var.environment}"
 
  public_subnet_1a = "${module.subnet.public_subnet_1a}"

}

module "routes" {
  source = "./routes"

  vpc_id = "${module.vpc.vpc_id}"
  environment = "${var.environment}"
 
  gateway_id = "${module.igw.gateway_id}"
  nat_id = "${module.nat.nat_id}"

}

module "associate_routes" {
  source = "./associate_routes"

  public_route_table = "${module.routes.public_route_table}"
  private_route_table = "${module.routes.private_route_table}"

  public_subnet_1a = "${module.subnet.public_subnet_1a}"
  public_subnet_1b = "${module.subnet.public_subnet_1b}"
  public_subnet_1c = "${module.subnet.public_subnet_1c}"
  public_subnet_1d = "${module.subnet.public_subnet_1d}"
  public_subnet_1e = "${module.subnet.public_subnet_1e}"
  public_subnet_1f = "${module.subnet.public_subnet_1f}"
 
  private_subnet_1a = "${module.subnet.private_subnet_1a}"
  private_subnet_1b = "${module.subnet.private_subnet_1b}"
  private_subnet_1c = "${module.subnet.private_subnet_1c}"
  private_subnet_1d = "${module.subnet.private_subnet_1d}"
  private_subnet_1e = "${module.subnet.private_subnet_1e}"
  private_subnet_1f = "${module.subnet.private_subnet_1f}"

}

