data "azurerm_subscription" "subscription" {

    


}

data "azurerm_client_config" "test" {

    


}

resource "azurerm_role_definition" "new_role_definition" {

  role_definition_id = "${var.role_definition_id}"
  name               = "${var.role_name}"
  scope              = "${data.azurerm_subscription.subscription.id}"

  permissions {

    actions     = ["${var.actions}"]
    not_actions = []

  }

  assignable_scopes = [
    "${data.azurerm_subscription.subscription.id}"
  ]
}

resource "azurerm_role_assignment" "new_assignment" {

  name               = "${var.role_assignment_name}"
  scope              = "${data.azurerm_subscription.subscription.id}"
  role_definition_id = "${azurerm_role_definition.new_role_definition.id}"
  principal_id       = "${var.principal_id}"

}