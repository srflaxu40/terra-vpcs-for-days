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
  subnet_one = "${var.subnet_one}"
  subnet_two = "${var.subnet_two}"

  environment = "${var.environment}"

}

