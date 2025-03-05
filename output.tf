output "fluentbit_instance_id" {
  value = aws_instance.fluentbit.id
}

output "filebeat_instance_id" {
  value = aws_instance.filebeat.id
}

output "promtail_instance_id" {
  value = aws_instance.promtail.id
}

