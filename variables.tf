variable "namespace" {
  type        = "string"
  description = "Namespace (e.g. `cp` or `cloudposse`)"
}

variable "stage" {
  type        = "string"
  description = "Stage (e.g. `prod`, `dev`, `staging`)"
}

variable "name" {
  type        = "string"
  description = "Name (e.g. `app` or `chamber`)"
}

variable "delimiter" {
  type        = "string"
  default     = "-"
  description = "Delimiter to be used between `namespace`, `stage`, `name` and `attributes`"
}

variable "attributes" {
  type        = "list"
  default     = []
  description = "Additional attributes (e.g. `1`)"
}

variable "tags" {
  type        = "map"
  default     = {}
  description = "Additional tags (e.g. map(`BusinessUnit`,`XYZ`)"
}

variable "enabled" {
  type        = "string"
  description = "Set to `false` to prevent the module from creating any resources"
  default     = "true"
}

variable "role_name" {
  type = "string"
}

variable "principals_services_arns" {
  type        = "list"
  default     = ["ec2.amazonaws.com"]
  description = "List of Services identifiers to allow assuming the role."
}

variable "role_description" {
  type        = "string"
  description = "The description of the IAM role that is visible in the IAM role manager"
}

variable "policy_description" {
  type        = "string"
  description = "The description of the IAM policy that is visible in the IAM policy manager"
}
