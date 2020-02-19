data "azurerm_resource_group" "resource_group" {

    name                        = "${var.resource_group_name}"
  
}

resource "azurerm_virtual_network" "vnet" {

    name                         = "${var.vnet_name}"
    location                     = "${var.location}"
    address_space                = ["${var.address_space}"]
    resource_group_name          = "${var.resource_group_name}"
    tags                         = {


        key                     = "${var.key}"
        value                   = "${var.value}"
    }
}


resource "azurerm_subnet" "subnet" {

  
  name                 = "${var.subnet_name}"
  resource_group_name  = "${var.resource_group_name}"
  virtual_network_name = "${azurerm_virtual_network.vnet.name}"
  address_prefix       = "${var.subnet_prefix}"
}

resource "azurerm_public_ip" "newip" {

    name                        = "${var.publicip_name}"
    location                    = "${var.location}"
    resource_group_name         = "${var.resource_group_name}"
    allocation_method           = "${var.allocation_method}"

    tags                        = {


        key                     = "${var.key}"
        value                   = "${var.value}"
    }


}

resource "azurerm_lb" "test" {

  name                = "${var.lb_name}"
  location            = "${var.location}"
  resource_group_name = "${var.resource_group_name}"

  frontend_ip_configuration {

    name                 = "${var.frontend_ipconfig_name}"
    public_ip_address_id = "${azurerm_public_ip.newip.id}"

  }
}

resource "azurerm_lb_backend_address_pool" "main" {

  name                = "${var.backend_addresspool_name}"
  location            = "${var.location}"
  resource_group_name = "${var.resource_group_name}"
  loadbalancer_id     = "${azurerm_lb.test.id}"

}

resource "azurerm_lb_nat_pool" "main" {

  name                           = "${var.lb_natpool_name}"
  resource_group_name            = "${var.resource_group_name}"
  loadbalancer_id                = "${azurerm_lb.test.id}"
  frontend_ip_configuration_name = "${var.frontend_ipconfig_name}"
  protocol                       = "${var.natpool_protocol}"
  frontend_port_start            = "${var.frontend_port_start}"
  frontend_port_end              = "${var.frontend_port_end}"
  backend_port                   = "${var.backend_port}"

}

resource "azurerm_lb_probe" "main" {

  name                = "${var.probe_name}"
  resource_group_name = "${var.resource_group_name}"
  loadbalancer_id     = "${azurerm_lb.test.id}"
  port                = "${var.probe_port}"
  protocol            = "${var.probe_protocol}"

}

resource "azurerm_lb_rule" "main" {

  name                           = "${var.lb_rule_name}"
  resource_group_name            = "${var.resource_group_name}"
  loadbalancer_id                = "${azurerm_lb.test.id}"
  probe_id                       = "${azurerm_lb_probe.main.id}"
  backend_address_pool_id        = "${azurerm_lb_backend_address_pool.main.id}"
  frontend_ip_configuration_name = "${var.frontend_ipconfig_name}"
  protocol                       = "${var.probe_protocol}"
  frontend_port                  = "${var.lb_rule_frontend_port}"
  backend_port                   = "${var.lb_rule_backend_port}"

}

resource "azurerm_virtual_machine_scale_set" "main" {

  name                          = "${var.scaleset_name}"
  resource_group_name           = "${var.resource_group_name}"
  location                      = "${var.location}"

  upgrade_policy_mode          = "${var.upgrade_mode}"

  rolling_upgrade_policy {

    max_batch_instance_percent              = "${var.max_batch_instance_percent}"
    max_unhealthy_instance_percent          = "${var.max_unhealthy_instance_percent}"
    max_unhealthy_upgraded_instance_percent = "${var.max_unhealthy_upgraded_instance_percent}"
    pause_time_between_batches              = "${var.pause_time_between_batches}"

  }

  health_probe_id     = "${azurerm_lb_probe.main.id}"


  sku {

      name            = "${var.scaleset_sku}"
      capacity        = "${var.instances}"

  } 

  storage_profile_image_reference {

    publisher                   = "${var.publisher}"
    offer                       = "${var.offer}"
    sku                         = "${var.sku}"
    version                     = "${var.image_version}"

  }

  storage_profile_os_disk {

    name              = ""
    create_option     = "${var.create_option}"
    managed_disk_type = "${var.managed_disk_type}"

    }

    os_profile {

    computer_name_prefix      = "${var.computer_name}"
    admin_username     = "${var.admin_username}"
    admin_password     = "${var.admin_password}"

   }

  os_profile_windows_config {


  }

  network_profile {

    name    = "${var.network_interface_name}"
    primary = true

    ip_configuration {

      name                                   = "${var.ipconf_name}"
      primary                                = true
      subnet_id                              = "${azurerm_subnet.subnet.id}"
      load_balancer_backend_address_pool_ids = ["${azurerm_lb_backend_address_pool.main.id}"]
      load_balancer_inbound_nat_rules_ids    = ["${azurerm_lb_nat_pool.main.id}"]

    }
  }



  tags                        = {


        key                     = "${var.key}"
        value                   = "${var.value}"
    }
}