output "sns_topic_id" {
  value       =  aws_sns_topic.default.id
  description = "SNS Topic ID"
}
output "sns_topic_arn" {
  value       =  aws_sns_topic.default.arn
  description = "SNS Topic ARN"
}
