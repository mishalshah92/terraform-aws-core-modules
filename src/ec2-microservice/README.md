# EC2 Microservice

This module deploys containerise service on EC2 machine with below and other more capabilities.

- [ASG](https://docs.aws.amazon.com/autoscaling/ec2/userguide/AutoScalingGroup.html) 
- [TargetGroup](https://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-target-groups.html)
- [LauchTempalte](https://docs.aws.amazon.com/autoscaling/ec2/userguide/LaunchTemplates.html) 
- [IAM](https://aws.amazon.com/iam/)

### Development

**Terraform version**: >= `0.12`

### Example

```hcl-terraform

provider "aws" {
  region = "us-west-2"
}

terraform {
  required_version = ">= 0.12.0"
}

module "service" {
  source = "git::https://github.com/pro-works/terraform-ec2-service-module.git//terraform/aws/ec2-deploy"
  
  vpc_id    = "vpc-example"
  vpc_subnet_ids = [ "subnet-example" ]
  
  # Service
  service_docker_compose_content = "Test content"
  
  # Launch Template
  ec2_ssh_public_key = "public-key-content"
  ec2_iam_policy_json = "{}"
  ec2_ami_id = "centos"
  ec2_instance_type = "t2.medium"
  
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
