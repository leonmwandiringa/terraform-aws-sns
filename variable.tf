variable "topic_subscriptions" {
 type = list(object({
    protocol = string
    endpoint = string
 })) 
 description = "topic subscriptions"
}

variable "tags" {
  type = object({
    Author      = string
    Environment = string
    Provisioner = string
    Region      = string
  })
  description = "base tags required in every resource"
}

variable "topic_name" {
  type = string
  description = "sns topic name"
}

variable "topic_policy_actions" {
  type = list(string)
  description = "list of all topic permission actions"
  default = [
      "SNS:*"
    ]
}

variable "topic_display_name" {
  type = string
  description = "topic display name"
  default = null
}

variable "is_fifo" {
  type = bool
  description = "is sns topic fifo"
  default = false
}

variable "content_based_deduplication" {
  type = bool
  description = "is content deduplication enabled"
  default = false
}

variable "delivery_policy" {
  type = string
  description = "sns delivery policy"
  default = ""
}