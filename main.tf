resource "aws_ssm_parameter" "roboshop_params" {
  count = length(var.parameters)
  name  = var.parameters[count.index].name
  type  = var.parameters[count.index].type
  value = var.parameters[count.index].value
}

variable "parameters" {
  default = [
    {
      name = "demo1",
      value = "demo1",
      type = "string"
    },
    {
      name = "demo2",
      value = "demo2",
      type = "string"
    }
  ]
}