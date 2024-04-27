 Web Application Terraform Module

This module deploys a web application on AWS using Terraform.

## Inputs

- `region`: AWS region to deploy resources.
- `vpc_cidr_block`: CIDR block for VPC.

## Outputs

- `load_balancer_dns`: DNS name of the load balancer.

## Design Decisions

- Utilizes Terraform modules for VPC, subnets, load balancer, and autoscaling.
- Configures security group for minimal ports required for communication.
- Creates self-signed certificate for test.example.com and configures Route53 private hosted zone.

## Usage

Example usage:

```hcl
module "web_app" {
  source         = "./web_application"
  region         = "us-west-2"
  vpc_cidr_block = "10.0.0.0/16"
}