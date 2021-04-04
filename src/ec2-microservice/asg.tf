resource "aws_launch_template" "service_template" {
  image_id                             = var.ec2_ami_id
  instance_type                        = var.ec2_instance_type
  instance_initiated_shutdown_behavior = "terminate"

  iam_instance_profile {
    name = aws_iam_instance_profile.ec2_instance_profile.name
  }

  key_name               = var.ec2_keypair_name
  update_default_version = true

  network_interfaces {
    description                 = "Service ${var.name}-${var.env} network interface."
    associate_public_ip_address = var.ec2_public
    delete_on_termination       = true
    subnet_id                   = element(tolist(var.vpc_subnet_ids), 0)
    security_groups = [
      aws_security_group.ec2_sg.id
    ]
  }

  block_device_mappings {
    device_name = "/dev/sda1"

    ebs {
      volume_size           = var.ec2_instance_root_volume_size
      delete_on_termination = true
    }
  }

  tag_specifications {
    resource_type = "instance"
    tags          = local.tags
  }

  tag_specifications {
    resource_type = "volume"
    tags          = local.tags
  }

  tags      = local.tags
  user_data = data.template_cloudinit_config.ec2_init_config_base64_encode.rendered

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_autoscaling_group" "service_asg" {
  force_delete     = false
  max_size         = var.asg_max_size
  min_size         = var.asg_min_size
  desired_capacity = var.asg_desired_capacity
  default_cooldown = var.asg_cooldown

  launch_template {
    id      = aws_launch_template.service_template.id
    version = aws_launch_template.service_template.latest_version
  }

  health_check_type         = "ELB"
  health_check_grace_period = var.asg_health_check_grace_period
  wait_for_elb_capacity     = 1

  vpc_zone_identifier = tolist(var.vpc_subnet_ids)

  target_group_arns = [
    aws_lb_target_group.service_lb_tg.id
  ]

  termination_policies = var.asg_termination_policies

  instance_refresh {
    strategy = "Rolling"
    preferences {
      min_healthy_percentage = var.asg_instance_refresh_pt
    }
    triggers = ["launch_template"]
  }


  tag {
    key                 = "Name"
    value               = var.name
    propagate_at_launch = true
  }

  tag {
    key                 = "Service"
    value               = var.name
    propagate_at_launch = true
  }

  tag {
    key                 = "Owner"
    value               = var.owner
    propagate_at_launch = true
  }

  tag {
    key                 = "Email"
    value               = var.email
    propagate_at_launch = true
  }

  tag {
    key                 = "Customer"
    value               = var.customer
    propagate_at_launch = true
  }

  tag {
    key                 = "Env"
    value               = var.env
    propagate_at_launch = true
  }

  tag {
    key                 = "Deployment"
    value               = var.deployment
    propagate_at_launch = true
  }

  tag {
    key                 = "Repo"
    value               = var.repo
    propagate_at_launch = false
  }

  tag {
    key                 = "Tool"
    value               = var.tool
    propagate_at_launch = true
  }

  tag {
    key                 = "VantaOwner"
    value               = lookup(var.tags, "VantaOwner", var.owner)
    propagate_at_launch = true
  }

  tag {
    key                 = "VantaNonProd"
    value               = lookup(var.tags, "VantaNonProd", "true")
    propagate_at_launch = true
  }

  tag {
    key                 = "VantaDescription"
    value               = lookup(var.tags, "VantaDescription", "This is deployment.")
    propagate_at_launch = true
  }

  lifecycle {
    create_before_destroy = true
  }

}

# ALB Target group
resource "aws_lb_target_group" "service_lb_tg" {
  port        = var.service_port
  target_type = "instance"
  protocol    = "HTTP"
  vpc_id      = var.vpc_id
  slow_start  = var.tg_slow_start

  health_check {
    enabled             = true
    interval            = var.tg_healthcheck_interval
    path                = var.tg_healthcheck_path
    port                = var.service_port
    timeout             = var.tg_healthcheck_timeout
    healthy_threshold   = var.tg_healthcheck_healthy_threshold
    unhealthy_threshold = var.tg_healthcheck_unhealthy_threshold
    matcher             = var.tg_healthcheck_response_code
  }

  deregistration_delay = var.tg_deregistration_delay

  stickiness {
    type    = "lb_cookie"
    enabled = var.tg_stickiness_enabled
  }

  tags = local.tags
}