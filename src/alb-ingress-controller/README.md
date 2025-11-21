# ACM Register

This module generates the SSL cert with the verifications.

### Development

**Terraform version**: >= `1.0`

### Example

```hcl-terraform

module "aws_app_ingress_controller" {
  source = "git::https://github.com/pro-works/terraform-ec2-service-module.git//terraform/aws/alb_ingress_controller"

  cluster = "aicustomer-apps"
  namespace = "kube-system"
  service_account_name = "alb-app-ingress-controller"

  # Tags
  tags = {
    customer       = "customer"
    env            = "learn"
    owner          = "customer"
    email          = "test@customer.com"
    repo           = "https://github.com/cloudops92/terraform-aws-base-modules"
    resource_group = "my-resourcegroup"
    deployment     = "default"
    module         = "test"
  }
}
```

For more info on variables, check [here](variables.tf)
