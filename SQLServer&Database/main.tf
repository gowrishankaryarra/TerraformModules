data "azurerm_resource_group" "resource_group" {

    name            = "${var.resource_group}"
    
  
}

resource "azurerm_sql_server" "Test" {

    name                            = "${var.server_name}"
    resource_group_name             = "${data.azurerm_resource_group.resource_group.name}"
    location                        = "${var.location}"
    version                         = "${var.server_version}"
    administrator_login             = "${var.admin_login}"
    administrator_login_password    = "${var.admin_login_password}"

    tags            = {

        key         = "${var.key}"
        value       = "${var.value}"

    }
  
}

resource "azurerm_sql_database" "DB1" {

    name                            = "${var.database_name}"
    resource_group_name             = "${var.resource_group}"
    location                        = "${var.database_location}"
    server_name                     = "${azurerm_sql_server.Test.name}"

    tags            = {

        key         = "${var.key}"
        value       = "${var.value}"

    }

  
}


