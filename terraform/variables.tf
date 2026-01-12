variable "region" {
  default = "us-east-1"
}

variable "cluster_name" {
  type        = string
  description = "The name of the ECS cluster."
}

variable "service_name" {
  type        = string
  description = "The name of the ECS service."
}

variable "service_port" {
  type        = number
  description = "The port on which the ECS service will run."
}

variable "service_cpu" {
  type        = number
  description = "The amount of CPU units to allocate for the ECS service."
}

variable "service_memory" {
  type        = number
  description = "The amount of memory (in MiB) to allocate for the ECS service."
}

variable "ssm_vpc_id" {
  type        = string
  description = "The SSM parameter name for the VPC ID."
}

variable "ssm_listener" {
  type        = string
  description = "The SSM parameter name for the ALB listener."
}

variable "ssm_private_subnet_1" {
  type        = string
  description = "The SSM parameter name for the first private subnet."
}

variable "ssm_private_subnet_2" {
  type        = string
  description = "The SSM parameter name for the second private subnet."
}

variable "ssm_private_subnet_3" {
  type        = string
  description = "The SSM parameter name for the third private subnet."
}

variable "ssm_alb_arn" {
  type        = string
  description = "The SSM parameter name for the ALB ARN."
}

variable "container_image" {
  type        = string
  description = "The container image to use for the ECS service."
}

variable "environment_variables" {
  type = list(any)
}
variable "capabilities" {
  type = list(any)
}
variable "service_healthcheck" {
  type = map(any)
}
variable "service_launch_type" {
  type = list(object({
    capacity_provider = string
    weight            = number
  }))
}
variable "service_task_count" {}
variable "service_hosts" {}

### Autoscaling ###
variable "scale_type" {}
variable "task_minimum" {}
variable "task_maximum" {}

### CPU Autoscaling ###
variable "scale_out_cpu_threshold" {}
variable "scale_out_adjustment" {}
variable "scale_out_comparison_operator" {}
variable "scale_out_statistic" {}
variable "scale_out_period" {}
variable "scale_out_evaluation_periods" {}
variable "scale_out_cooldown" {}
variable "scale_in_cpu_threshold" {}
variable "scale_in_adjustment" {}
variable "scale_in_comparison_operator" {}
variable "scale_in_statistic" {}
variable "scale_in_period" {}
variable "scale_in_evaluation_periods" {}
variable "scale_in_cooldown" {}

### CPU Tracking ###
variable "scale_tracking_cpu" {}

### Request Tracking ###
variable "scale_tracking_requests" {}