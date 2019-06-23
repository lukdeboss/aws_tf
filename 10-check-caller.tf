
data "aws_caller_identity" "current" {}

output "uzytkownik" {
  value = aws_caller_identity.current.arn
}
