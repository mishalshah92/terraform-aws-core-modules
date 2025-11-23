# AWS EC2 Launch Template

Terraform modules create launch template for EC2.

## Development

```hcl-terraform

module "service-launch-template" {
  source = "git::https://github.com/mishalshah92/terraform-aws-modules.git//terraform/ec2-launch-template"

  name = "ServiceTemplate"
  vpc_subnet_id = "subnet-sadasdasd"
  ec2_ami_id = "ami-sda"

  # Tags
  customer       = "customer"
  env            = "learn"
  owner          = "customer"
  email          = "test@customer.ai"
  repo           = "https://github.com/mishalshah92/terraform-aws-base-modules"
  resource_group = "my-resourcegroup"
  deployment     = "default"
  module         = "test"
}

```
 
- **Variables**: For info on variables, check [file](variables.tf)
- **Outputs**: For info on outputs, check [file](outputs.tf)