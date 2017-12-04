# Terraform Your VPCs:

---

* In order to use Terraform, first install:

https://www.terraform.io/intro/getting-started/install.html

* Now, export your AWS-related environment credentials:
* `source tf_env_variables`

* NOTE - Do not attempt to run Terraform modules singularly as this is a known issue that Terraform may attempt
  to re-create your resources adding duplicates in casees.

* You can also export your credentials file location (typically `~/.aws/credentials`::

`AWS_SHARED_CREDENTIALS_FILE`

* Now, pull down your terraform modules locally:

`terraform get`

* You are now ready to plan:

`terraform plan`

---

* Now terraform:

```
jknepper@MacBook-Pro-3> terraform init
jknepper@MacBook-Pro-3> terraform get
jknepper@MacBook-Pro-3> terraform plan
jknepper@MacBook-Pro-3> terraform apply
```

