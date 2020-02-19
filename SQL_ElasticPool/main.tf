data "azurerm_sql_server" "SQLServer" {

    name                    = "${var.server_name}"

    resource_group_name     = "${var.resource_group_name}"
  
}

resource "azurerm_sql_elasticpool" "sample" {

    name                    = "${var.pool_name}"
    resource_group_name     = "${var.resource_group_name}"
    location                = "${var.pool_location}"
    server_name             = "${data.azurerm_sql_server.SQLServer.name}"
    edition                 = "${var.edition}"
    dtu                     = "${var.dtu}"
    db_dtu_min              = "${var.db_dtu_min}"
    db_dtu_max              = "${var.db_dtu_max}"
    pool_size               = "${var.pool_size}"

    tags                    = {


        key         = "${var.key}"
        value       = "${var.value}"
    }
  
}

