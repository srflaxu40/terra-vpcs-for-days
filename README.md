# Terraform Your VPCs:

---

## Pre-Flight:
* This requires the following terraform and aws provider versions:
```
Terraform v0.12.8
+ provider.aws v2.27.0
```

This code will create a production-grade VPC in us-east-1.  It does _not_
setup a VPN.  If you'd like to create a VPN later, please see [ansible-m31](https://github.com/srflaxu40/ansible-m31).

To change the region, subnets and availability zones you will have to update the `TF_VAR_region` variable, and
also the following files:
```
subnet/subnet.tf
associate_rourtes/associate_routes.tf
associate_routes/variables.tf
main.tf
```
Be sure to update the subnets, and AZs to reflect the count and makeup of your region.

* [Installing Terraform](https://www.terraform.io/intro/getting-started/install.html)

* Export your AWS creds:
```
export AWS_ACCESS_KEY_ID=redacted
export AWS_SECRET_ACCESS_KEY=redacted
```

* Now, export your AWS-related environment credentials:
* `source tf_env_variables`

* Now terraform:

```
jknepper@MacBook-Pro-3> terraform init
jknepper@MacBook-Pro-3> terraform get
jknepper@MacBook-Pro-3> terraform plan
jknepper@MacBook-Pro-3> terraform apply
jknepper@MacBook-Pro-3> terraform destroy
```

## Notes:

* This only works in us-east-1 as it has 6 AZs (a-f), and most others do not.
* Note that this does *not* configure the route for your VPN.  That route needs to be explicitly added to your route tables
  based on the network block of the VPN connection that you choose.
