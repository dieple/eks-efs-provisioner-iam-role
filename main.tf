data "aws_caller_identity" "current" {}
data "aws_region" "current" {}

data "aws_iam_policy_document" "ec2" {
  statement {
    sid       = "Ec2Access"
    effect    = "Allow"
    resources = ["*"]

    actions = [
      "ec2:DescribeSubnets",
      "ec2:CreateNetworkInterface",
      "ec2:DescribeNetworkInterfaces",
      "ec2:DeleteNetworkInterface",
      "ec2:ModifyNetworkInterfaceAttribute",
      "ec2:DescribeNetworkInterfaceAttribute",
    ]
  }
}

data "aws_iam_policy_document" "efs" {
  statement {
    sid = "EFSAccess"

    actions = [
      "elasticfilesystem:*",
    ]

    resources = ["arn:aws:elasticfilesystem:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:file-system/*"]
    effect    = "Allow"
  }
}

module "eks_efs_provisioner_iam_role" {
  source = "git::https://github.com/cloudposse/terraform-aws-iam-role.git?ref=tags/0.2.1"

  attrributes = "${var.attributes}"
  enabled     = "${var.enabled}"
  namespace   = "${var.namespace}"
  stage       = "${var.stage}"
  name        = "${var.name}"
  tags        = "${var.tags}"

  principals_arns = ["arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/${var.role_name}"]

  policy_documents = [
    "${data.aws_iam_policy_document.ec2.json}",
    "${data.aws_iam_policy_document.efs.json}",
  ]
}