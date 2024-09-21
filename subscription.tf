resource "aws_sns_topic_subscription" "default" {
  count = length(var.topic_subscriptions) > 0 ? length(var.topic_subscriptions) : 0
  topic_arn = aws_sns_topic.default.arn
  protocol  = var.topic_subscriptions[count.index].protocol
  endpoint  = var.topic_subscriptions[count.index].endpoint
}