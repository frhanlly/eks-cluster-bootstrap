resource "aws_iam_role" "eks_mng_role" {
  name = "${var.project_name}-eksMngRole"


  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  assume_role_policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Effect" : "Allow",
        "Action" : [
          "sts:AssumeRole"
        ],
        "Principal" : {
          "Service" : [
            "ec2.amazonaws.com"
          ]
        }
      }
    ]
  })


}



resource "aws_iam_role_policy_attachment" "eks_node_policy" {
  role       = aws_iam_role.eks_mng_role.name
  policy_arn = var.node_policy
}

resource "aws_iam_role_policy_attachment" "eks_cni_policy" {
  role       = aws_iam_role.eks_mng_role.name
  policy_arn = var.policy_cni
}


resource "aws_iam_role_policy_attachment" "eks_ecr_policy" {
  role       = aws_iam_role.eks_mng_role.name
  policy_arn = var.ecr_policy
}