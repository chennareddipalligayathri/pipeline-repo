provider "aws"{
region ="us-east-2"
}
module "gayathri-server" {
  source  = "app.terraform.io/Gayathri-Terraform/gayathri-server/aws"
  version = "1.0.2"
  hw ="t2.nano"
  servername ="Gayathri-ec2-module-instance-github"
# insert required variables here
}
output "ip"{
value =module.gayathri-server.IP
}
