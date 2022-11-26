resource "aws_organizations_organization" "main" {
  aws_service_access_principals = [
    "cloudtrail.amazonaws.com",
    "config.amazonaws.com"
  ]
  feature_set = "ALL"
}

resource "aws_organizations_account" "account1" {
  name  = local.units.account1.name
  email = local.units.account1.email
}
resource "aws_organizations_account" "account2" {
  name  = local.units.account2.name
  email = local.units.account2.email
}