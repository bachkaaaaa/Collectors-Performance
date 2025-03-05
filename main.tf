resource "aws_iam_instance_profile" "new_one_profile" {
  name = "new_one_profile"
  role = "new_one"
}

resource "aws_instance" "fluentbit" {
  ami                  = var.ami
  instance_type        = var.instance_type
  key_name             = var.key_name
  user_data            = file("./bootstrap.sh")
  iam_instance_profile = aws_iam_instance_profile.new_one_profile.name
  metadata_options {
    http_tokens                 = "optional"  # Allows IMDSv1 and IMDSv2
    http_put_response_hop_limit = 10          # Default is 1, increase if needed
    http_endpoint               = "enabled"  # Ensures IMDS is enabled
    instance_metadata_tags      = "enabled"  # Enables access to instance tags
  }
  tags = { Name = "FluentBit-Server" }
}

resource "aws_instance" "filebeat" {
  ami                  = var.ami
  instance_type        = var.instance_type
  key_name             = var.key_name
  user_data            = file("./bootstrap.sh")
  iam_instance_profile = aws_iam_instance_profile.new_one_profile.name
  metadata_options {
    http_tokens                 = "optional"  # Allows IMDSv1 and IMDSv2
    http_put_response_hop_limit = 10          # Default is 1, increase if needed
    http_endpoint               = "enabled"  # Ensures IMDS is enabled
    instance_metadata_tags      = "enabled"  # Enables access to instance tags
  }
  tags = { Name = "Filebeat-Server" }
}

resource "aws_instance" "promtail" {
  ami                  = var.ami
  instance_type        = var.instance_type
  key_name             = var.key_name
  user_data            = file("./bootstrap.sh")
  iam_instance_profile = aws_iam_instance_profile.new_one_profile.name
  metadata_options {
    http_tokens                 = "optional"  # Allows IMDSv1 and IMDSv2
    http_put_response_hop_limit = 10          # Default is 1, increase if needed
    http_endpoint               = "enabled"  # Ensures IMDS is enabled
    instance_metadata_tags      = "enabled"  # Enables access to instance tags
  }
  tags = { Name = "Promtail-Server" }
}
