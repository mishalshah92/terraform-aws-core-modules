# Terraform AWS Core Modules

This repo is a collection of foundational, reusable Terraform modules designed to provide the 
essential building blocks for AWS infrastructure. These modules are vanilla, atomic, and 
dependency-light, enabling teams to compose reliable, consistent, and production-ready 
architectures with minimal overhead.

This repository serves as the source of truth for core AWS components—networking, compute, 
storage, security, and platform primitives—that can be consumed directly or assembled into 
higher-level constructs in downstream repos.

**Key Characteristics:**

- Foundation-first: Modules represent core AWS resources, not opinionated solutions.
- Composable: Designed to be composed into higher-level architectures.
- Reusable & consistent: Enforces standard patterns across environments.
- Minimal assumptions: Lightweight, configurable, and cloud-agnostic patterns where possible.
- Upstream source: Consumed by repositories like terraform-aws-construct for solution-level deployments.

Use this repository when you need clean, flexible, and production-grade AWS primitives to build 
infrastructure with Terraform.

## Modules

- [acm](src/acm)
- [acm-import](src/acm-import)
- [alb-ingress-controller](src/alb-ingress-controller)
- [client-vpn-authorization-rule](src/client-vpn-authorization-rule)
- [client-vpn-endpoint](src/client-vpn-endpoint)
- [client-vpn-network-association](src/client-vpn-network-association)
- [cloudwatch-metric-alarm](src/cloudwatch-metric-alarm)
- [docdb-cluster](src/docdb-cluster)
- [docdb-cluster-instance](src/docdb-cluster-instance)  
- [ec2-microservice](src/ec2-microservice) 
- [eks-ec2-node-group](src/eks-ec2-node-group)
- [eks-master](src/eks-master)
- [eks-node-group](src/eks-node-group)
- [eks-service-account](src/eks-service-account)
- [kms-key-generator](src/kms-key-generator)
- [ec2-launch-template](src/ec2-launch-template)  
- [rds-postgresql](src/rds-postgresql)
- [redis-elasticache](src/redis-elasticache)
- [resource-group](src/resource-group)
- [vpc](src/vpc)
- [vpc-devops](src/vpc-devops)
- [vpc-eks](src/vpc-eks)
- [vpc-internet-gateway](src/vpc-internet-gateway)
- [vpc-nat-gateway](src/vpc-nat-gateway)
- [vpc-peering](src/vpc-peering)
- [vpc-route-table](src/vpc-route-table)
- [vpc-subnet](src/vpc-subnet)

## Overview

- **Maintainer**: mishalshah92@gmail.com

## Releases

Click [here](RELEASES.md) to view Releases!!!
