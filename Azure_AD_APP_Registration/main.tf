resource "azuread_application" "example" {
  
  name                       = "${var.name}"
  homepage                   = "${var.Home_page}"
  identifier_uris            = "${var.identifier_uris}"
  reply_urls                 = "${var.reply_urls}"
  available_to_other_tenants = "${var.available_to_other_tenants}"
  oauth2_allow_implicit_flow = "${var.oauth2_allow_implicit_flow}"

}

