# resource "aws_secretsmanager_secret" "test" {
#   name = format("%s-example-secret", var.service_name)
# }

# resource "aws_secretsmanager_secret_version" "test" {
#   secret_id     = aws_secretsmanager_secret.test.id
#   secret_string = "Secret Manager Test"
# }