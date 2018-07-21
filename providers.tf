#
# Provider Configuration
#

provider "aws" {
  region = "us-east-1"
}

# Using these data sources allows the configuration to be
# generic for any region.
data "aws_region" "current" {}

###data "aws_availability_zones" "all" {}

variable "zones" {
  default = ["us-east-1b", "us-east-1c", "us-east-1d"]
}
#variable "aws_availability_zones" {
#  default = [
#    "us-east-1b",
#    "us-east-1c",
#    "us-east-1d"
#  ]
#  type = "list"
#}

# Not required: currently used in conjuction with using
# icanhazip.com to determine local workstation external IP
# to open EC2 Security Group access to the Kubernetes cluster.
# See workstation-external-ip.tf for additional information.
provider "http" {}
