#Primary Database details

data "azurerm_sql_server" "primarySQLServer" {

    name                = "${var.primary_server_name}"

    resource_group_name = "${var.primary_resource_group_name}"
  
}

data "azurerm_sql_database" "SQLDB" {

    name                = "${var.primary_database_name}"

    server_name         = "${data.azurerm_sql_server.primarySQLServer.name}"

    resource_group_name = "${var.primary_resource_group_name}"
  
}


#SQL server in secondary region for replication and failover
resource "azurerm_sql_server" "secondary" {

    name                            = "${var.secondary_server_name}"
    resource_group_name             = "${var.secondary_resource_group_name}"
    location                        = "${var.secondary_location}"
    version                         = "${var.secondary_server_version}"
    administrator_login             = "${var.admin_login}"
    administrator_login_password    = "${var.admin_password}"

    tags            = {

        key         = "${var.key}"
        value       = "${var.value}"

    }
  
}

#failover group
resource "azurerm_sql_failover_group" "sample" {

    name                    = "${var.failover_name}"
    resource_group_name     = "${var.primary_resource_group_name}"
    server_name             = "${data.azurerm_sql_server.primarySQLServer.name}"
    databases               =  ["${data.azurerm_sql_database.SQLDB.id}"]
    partner_servers {

        id     = "${azurerm_sql_server.secondary.id}"
    }

    read_write_endpoint_failover_policy {

       mode          = "${var.mode}"
       grace_minutes = "${var.grace_minutes}"

  }

}




  



