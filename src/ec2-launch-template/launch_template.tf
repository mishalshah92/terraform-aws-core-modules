resource "aws_launch_template" "launch_template" {
  name_prefix                          = "${var.name}-"
  description                          = var.description
  image_id                             = var.ec2_ami_id
  instance_type                        = var.ec2_instance_type
  instance_initiated_shutdown_behavior = var.ec2_instance_shutdown_behavior

  iam_instance_profile {
    name = var.ec2_iam_instance_profile_name
  }

  key_name               = var.ec2_keypair_name
  update_default_version = true

  network_interfaces {
    description                 = var.description
    associate_public_ip_address = var.ec2_public
    delete_on_termination       = true
    subnet_id                   = var.vpc_subnet_id
    security_groups             = var.ec2_security_group_ids
  }

  block_device_mappings {
    device_name = "/dev/sda1"

    ebs {
      volume_size           = var.ec2_instance_root_volume_size
      delete_on_termination = true
    }
  }

  disable_api_termination = var.ec2_disable_api_termination

  tag_specifications {
    resource_type = "instance"
    tags          = local.ec2_tags
  }

  tag_specifications {
    resource_type = "volume"
    tags          = local.ec2_tags
  }

  tags      = local.tags
  user_data = var.ec2_init_config_base64_encode

  lifecycle {
    create_before_destroy = true
  }
}