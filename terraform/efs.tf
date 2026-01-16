resource "aws_efs_file_system" "main" {
  creation_token   = format("%s-efs", var.service_name)
  performance_mode = "generalPurpose"
}

resource "aws_security_group" "efs" {
  description = format("%s-efs-sg", var.service_name)
  name        = format("%s-efs-sg", var.service_name)
  vpc_id      = data.aws_ssm_parameter.vpc_id

  ingress = [
    {
      from_port   = 2049
      to_port     = 2049
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]

  egress = [{
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }]
}

resource "aws_efs_mount_target" "mount-1a" {
  file_system_id  = aws_efs_file_system.main.id
  subnet_id       = data.aws_ssm_parameter.subnet_private_1a.value
  security_groups = [aws_security_group.efs.id]
}

resource "aws_efs_mount_target" "mount-1b" {
  file_system_id  = aws_efs_file_system.main.id
  subnet_id       = data.aws_ssm_parameter.subnet_private_1b.value
  security_groups = [aws_security_group.efs.id]
}

resource "aws_efs_mount_target" "mount-1c" {
  file_system_id  = aws_efs_file_system.main.id
  subnet_id       = data.aws_ssm_parameter.subnet_private_1c.value
  security_groups = [aws_security_group.efs.id]
}