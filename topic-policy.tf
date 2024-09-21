resource "aws_sns_topic_policy" "default" {
  arn = aws_sns_topic.default.arn
  policy = data.aws_iam_policy_document.sns_topic_policy.json
}

data "aws_iam_policy_document" "sns_topic_policy" {
  policy_id        = "${var.topic_name}_policy"
  statement {
    principals {
      type        = "AWS"
      identifiers = ["*"]
    }

    actions = var.topic_policy_actions
    effect   = "Allow"
    resources = [aws_sns_topic.default.arn]
  }

}
