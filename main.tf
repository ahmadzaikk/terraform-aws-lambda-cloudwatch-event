

data "archive_file" "DataSource" {
    type = "zip"
    source_dir  = "scripts"
    output_path = "outputs/PythonFun.py"
  }



  resource "aws_lambda_function" "this" {
    count = var.enabled ? 1 : 0
    filename = data.archive_file.DataSource.output_path
    source_code_hash = data.archive_file.DataSource.output_base64sha256
    function_name = var.function_name
    role          = var.role
    handler       = var.handler
    runtime       = "python3.8"
    timeout       = var.timeout
    description   = var.description
    tags          = var.tags
  }

