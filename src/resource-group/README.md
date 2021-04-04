# EKS VPC

Terraform modules create Resource Group in AWS.

## Development

```hcl-terraform

module "resource-group" {
  source = "git::https://github.com/cloudops92/terraform-aws-modules.git//src/resource-group"

  name                  = "my-resourcegroup"
  resource_type_filters = "AWS::AllSupported"

  tag_filters = [
    {
      Key : "Customer",
      Values : "customer"
    },
    {
      Key : "Env"
      Values : "prod"
    }
  ]

  # Tags
  customer       = "customer"
  env            = "learn"
  owner          = "customer"
  email          = "test@customer.ai"
  repo           = "https://github.com/cloudops92/terraform-aws-modules"
  resource_group = "my-resourcegroup"
  deployment     = "default"
  module         = "test"
} 

```
 
- **Variables**: For info on variables, check [file](variables.tf)
- **Outputs**: For info on outputs, check [file](outputs.tf)