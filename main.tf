provider "aws" {}

module "organizations" {
  source = "./module/organizations"
}
