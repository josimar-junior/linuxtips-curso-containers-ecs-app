resource "aws_ssm_parameter" "test" {
  name  = format("%s-example-parameter", var.service_name)
  value = "Parameter Store Test"
  type  = "String"
}