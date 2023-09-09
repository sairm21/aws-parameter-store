resource "aws_ssm_parameter" "roboshop_params" {
  count = length(var.parameters)
  name  = var.parameters[count.index].name
  type  = var.parameters[count.index].type
  value = var.parameters[count.index].value
}

variable "parameters" {
  default = [
    {
      name = "roboshop.dev.frontend.catalogue_url",
      value = "http://catalogue-dev.iamadevopsengineer.tech:8080/",
      type = "String"
    },
    {
      name = "roboshop.dev.frontend.user_url",
      value = "http://user-dev.iamadevopsengineer.tech:8080/",
      type = "String"
    },
    {
      name = "roboshop.dev.frontend.cart_url",
      value = "http://cart-dev.iamadevopsengineer.tech:8080/",
      type = "String"
    },
    {
      name = "roboshop.dev.frontend.shipping_url",
      value = "http://shipping-dev.iamadevopsengineer.tech:8080/",
      type = "String"
    },
    {
      name = "roboshop.dev.frontend.payment_url",
      value = "http://payment-dev.iamadevopsengineer.tech:8080/",
      type = "String"
    }
  ]
}