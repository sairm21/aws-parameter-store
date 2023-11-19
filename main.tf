resource "aws_ssm_parameter" "roboshop_params" {
  count = length(var.parameters)
  name  = var.parameters[count.index].name
  type  = var.parameters[count.index].type
  value = var.parameters[count.index].value
  key_id = "arn:aws:kms:us-east-1:804838709963:key/7123afc2-b40f-4051-8098-22eef643474b"
}

variable "parameters" {
  default = [
    {
      name = "roboshop.dev.frontend.catalogue_url",
      value = "https://catalogue-dev.iamadevopsengineer.tech/",
      type = "String"
    },
    {
      name = "roboshop.dev.frontend.user_url",
      value = "https://user-dev.iamadevopsengineer.tech/",
      type = "String"
    },
    {
      name = "roboshop.dev.frontend.cart_url",
      value = "https://cart-dev.iamadevopsengineer.tech/",
      type = "String"
    },
    {
      name = "roboshop.dev.frontend.shipping_url",
      value = "https://shipping-dev.iamadevopsengineer.tech/",
      type = "String"
    },
    {
      name = "roboshop.dev.frontend.payment_url",
      value = "https://payment-dev.iamadevopsengineer.tech/",
      type = "String"
    },
    {
      name = "roboshop.dev.cart.redis_host",
      #value = "redis-dev.iamadevopsengineer.tech",
      value = "elasticache-dev-redis-cluster.oy3te9.clustercfg.use1.cache.amazonaws.com"
      type = "String"
    },
    {
      name = "roboshop.dev.cart.catalogue_host",
      value = "catalogue-dev.iamadevopsengineer.tech",
      type = "String"
    },
    {
      name = "roboshop.dev.cart.catalogue_port",
      value = "80",
      type = "String"
    },
    {
      name = "roboshop.dev.catalogue.mongo",
      value = "true",
      type = "String"
    },
    {
      name = "roboshop.dev.catalogue.mongo_url",
      #value = "mongodb://roboshop:roboshop123@docdb-dev.cluster-c4cylamu5ttb.us-east-1.docdb.amazonaws.com:27017/catalogue?tls=true&replicaSet=rs0&readPreference=secondaryPreferred&retryWrites=false",
      value = "mongodb://roboshop:roboshop123@mongodb-dev-docdb-cluster.cluster-c4cylamu5ttb.us-east-1.docdb.amazonaws.com:27017/catalogue?tls=true&replicaSet=rs0&readPreference=secondaryPreferred&retryWrites=false",
      type = "SecureString"
    },
    {
      name = "roboshop.dev.catalogue.docdb_endpoint",
      #value = "docdb-dev.cluster-c4cylamu5ttb.us-east-1.docdb.amazonaws.com",
      value = "mongodb-dev-docdb-cluster.cluster-c4cylamu5ttb.us-east-1.docdb.amazonaws.com",
      type = "String"
    },
    {
      name = "roboshop.dev.user.mongo_url",
      #value = "mongodb://roboshop:roboshop123@docdb-dev.cluster-c4cylamu5ttb.us-east-1.docdb.amazonaws.com:27017/catalogue?tls=true&replicaSet=rs0&readPreference=secondaryPreferred&retryWrites=false",
      value = "mongodb://roboshop:roboshop123@mongodb-dev-docdb-cluster.cluster-c4cylamu5ttb.us-east-1.docdb.amazonaws.com:27017/users?tls=true&replicaSet=rs0&readPreference=secondaryPreferred&retryWrites=false",
      type = "SecureString"
    },
    {
      name = "roboshop.dev.user.docdb_endpoint",
      #value = "docdb-dev.cluster-c4cylamu5ttb.us-east-1.docdb.amazonaws.com",
      value = "mongodb-dev-docdb-cluster.cluster-c4cylamu5ttb.us-east-1.docdb.amazonaws.com",
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
      #value = "redis-dev.iamadevopsengineer.tech",
      value = "elasticache-dev-redis-cluster.oy3te9.clustercfg.use1.cache.amazonaws.com"
      type = "String"
    },
/*    {
      name = "roboshop.dev.user.mongo_url",
      value = "mongodb://mongodb-dev.iamadevopsengineer.tech:27017/users",
      type = "String"
    }, */
    {
      name = "roboshop.dev.rabbitmq.amqp_user",
      value = "roboshop",
      type = "String"
    },
    { #passwords will be never part of git repos they will be creted manually through console
      name = "roboshop.dev.rabbitmq.amqp_pass",
      value = "roboshop123",
      type = "SecureString"
    },
    {
    name = "roboshop.dev.mysql.username",
    value = "roboshop",
    type = "String"
    },
    { #passwords will be never part of git repos they will be creted manually through console
    name = "roboshop.dev.mysql.password",
    value = "roboshop123",
    type = "SecureString"
    },
    name = "roboshop.dev.mysql.endpoint",
    value = "mysql-dev-shipping-cluster.cluster-c4cylamu5ttb.us-east-1.rds.amazonaws.com",
    type = "String"
    },
    {
      name = "roboshop.dev.docdb.username",
      value = "roboshop",
      type = "String"
    },
    { #passwords will be never part of git repos they will be creted manually through console
      name = "roboshop.dev.docdb.password",
      value = "roboshop123",
      type = "SecureString"
    }
  ]
}