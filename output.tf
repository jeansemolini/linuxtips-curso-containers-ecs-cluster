output "load_balancer_dns" {
  description = "O nome DNS do Load Balancer criado. Esse valor pode ser usado para acessar o Load Balancer dentro da rede ou pela internet, dependendo da configuração."
  value       = aws_lb.main.dns_name
}

output "internal_load_balancer_dns" {
  description = "O nome DNS do Load Balancer Interno criado. Esse valor pode ser usado para acessar o Load Balancer dentro da rede ou pela internet, dependendo da configuração."
  value       = aws_lb.internal.dns_name
}

output "lb_ssm_arn" {
  description = "O Amazon Resource Name (ARN) do parâmetro do AWS Systems Manager (SSM) que armazena o ARN do Load Balancer. Esse valor pode ser usado para referenciar o ARN do Load Balancer em políticas de IAM, regras de segurança, ou em qualquer outro lugar que requeira o ARN do Load Balancer."
  value       = aws_ssm_parameter.lb_arn.id
}

output "lb_ssm_listener" {
  description = "O ID do parâmetro do AWS Systems Manager (SSM) que armazena o Listener do Load Balancer. Esse valor pode ser utilizado para referenciar o Listener em automações, scripts, ou dentro de outras configurações da AWS que necessitem do ID do Listener."
  value       = aws_ssm_parameter.lb_listener.id
}

output "cloudmap_ssm" {
  description = "ID do Namespace de Service Discovery do Cluster"
  value       = aws_ssm_parameter.cloudmap.id
}

output "service_connect_ssm" {
  description = "ID do Namespace de Service Connect do Cluster"
  value       = aws_ssm_parameter.service_connect.id
}

output "service_connect_name_ssm" {
  description = "Nome do Service Connect do Cluster"
  value       = aws_ssm_parameter.service_connect_name.id
}

output "vpc_link" {
  description = "ID do VPC Link do Cluster"
  value       = aws_ssm_parameter.vpc_link.id
}