resource "aws_iam_role" "sample_role" {
    name = "testing_role_1"

    assume_role_policy = jsonencode({
        Version = "2012-10-17"
        Statement = [
        {
            Action = "sts:AssumeRole"
            Effect = "Allow"
            Sid    = ""
            Principal = {
            Service = "lambda.amazonaws.com"
            }
        },
        ]
    })

}