output "load_balancer_dns" {
  description = "DNS name of the load balancer"
  value       = module.load_balancer.this_lb_dns_name
}

# Define other outputs as needed
