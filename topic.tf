resource "aws_sns_topic" "default" {
  name                        = var.topic_name
  display_name = var.topic_display_name == null ? var.topic_name : var.topic_display_name
  fifo_topic                  = var.is_fifo
  content_based_deduplication = var.content_based_deduplication
  delivery_policy = var.delivery_policy
  tags = var.tags
}