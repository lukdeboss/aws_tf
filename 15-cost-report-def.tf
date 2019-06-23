
data "aws_cur_report_definition" "report_definition" {
  report_name = "example"
}


output costregion {
  value = data.aws_cur_report_definition.report_definition.s3_region
}
