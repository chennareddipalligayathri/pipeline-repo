provider "aws"{
region ="us-east-2"
}
module "gayathri-server" {
  source  = "app.terraform.io/Gayathri-Terraform/gayathri-server/aws"
  version = "1.0.1"
  hw ="t2.nano"
  servername ="Gayathri-ec2-module-instance"
# insert required variables here
}
output "ip"{
value =module.gayathri-server.ip
}
