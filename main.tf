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
    },
    {
      name = "roboshop.dev.cart.redis_host",
      value = "redis-dev.iamadevopsengineer.tech",
      type = "String"
    },
    {
      name = "roboshop.dev.cart.catalogue_host",
      value = "catalogue-dev.iamadevopsengineer.tech",
      type = "String"
    },
    {
      name = "roboshop.dev.cart.catalogue_port",
      value = "8080",
      type = "String"
    },
    {
      name = "roboshop.dev.catalogue.mongo",
      value = "true",
      type = "String"
    },
    {
      name = "roboshop.dev.catalogue.mongo_url",
      value = "mongodb://mongodb-dev.iamadevopsengineer.tech:27017/catalogue",
      type = "String"
    },
    {
      name = "roboshop.dev.payment.cart_host",
      value = "cart-dev.iamadevopsengineer.tech",
      type = "String"
    },
    {
      name = "roboshop.dev.payment.cart_port",
      value = "8080",
      type = "String"
    },
    {
      name = "roboshop.dev.payment.user_host",
      value = "user-dev.iamadevopsengineer.tech",
      type = "String"
    },
    {
      name = "roboshop.dev.payment.user_port",
      value = "8080",
      type = "String"
    },
    {
      name = "roboshop.dev.payment.amqp_host",
      value = "rabbitmq-dev.iamadevopsengineer.tech",
      type = "String"
    },
    {
      name = "roboshop.dev.payment.amqp_user",
      value = "roboshop",
      type = "String"
    },
    { #passwords will be never part of git repos they will be creted manually through console
      name = "roboshop.dev.payment.amqp_pass",
      value = "roboshop123",
      type = "SecureString"
    },
    {
      name = "roboshop.dev.shipping.cart_endpoint",
      value = "cart-dev.iamadevopsengineer.tech:8080",
      type = "String"
    },
    {
      name = "roboshop.dev.shipping.db_host",
      value = "mysql-dev.iamadevopsengineer.tech",
      type = "String"
    },
    {
      name = "roboshop.dev.user.mongo",
      value = "true",
      type = "String"
    },
    {
      name = "roboshop.dev.user.redis_host",
      value = "redis-dev.iamadevopsengineer.tech",
      type = "String"
    },
    {
      name = "roboshop.dev.user.mongo_url",
      value = "mongodb://mongodb-dev.iamadevopsengineer.tech:27017/users",
      type = "String"
    }
  ]
}