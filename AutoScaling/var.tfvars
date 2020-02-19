client_id                       = "76c595f7-b1d5-4bf9-8045-8bb3579b2a02"
subscription_id                 = "2a5fbe7a-1cf9-4e8c-8b18-fe161a64b0fe"
tenant_id                       = "9900f69b-cfa2-43a7-953c-7c6076a6b856"
client_secret                   = "BH5vG=m2lt8JZ-9mwyyQoDXT]ATAjSZ]"

resource_group_name             = "RG_AZR_GOWRISHANKAR"

vnet_name                        = "scaleset"

location                        = "Southindia"

address_space                   = "172.168.0.0/16"

subnet_prefix                   = "172.168.2.0/26"

subnet_name                     = "ScalesetSubnet"

publicip_name                   = "confips"

allocation_method               = "Static"

lb_name                         = "scaleset_lb"

frontend_ipconfig_name          = "internal"

backend_addresspool_name        = "scaleset_pool"

lb_natpool_name                 = "lbnatpool"

natpool_protocol                = "tcp"

frontend_port_start             = 80

frontend_port_end               = 90

backend_port                    = 8080

probe_name                      = "testprobe"

probe_port                      = 22

probe_protocol                  = "tcp"

lb_rule_name                    = "testrule"

lb_rule_frontend_port           = 22

lb_rule_backend_port            = 22

scaleset_name                   = "testset"

scaleset_sku                    = "Standard_A2_V2"

instances                       = 2

computer_name                   = "testvm"

admin_username                  = "gowrishankar"

admin_password                  = "SHANKAR.0043"

upgrade_mode                    = "Rolling"

publisher                       = "MicrosoftWindowsServer"

offer                           = "WindowsServer"

sku                             = "2019-Datacenter"

image_version                   = "latest"

os-diskname                     = "scaleset-disk"

create_option                   = "FromImage"

managed_disk_type               = "Standard_LRS"

network_interface_name          = "scalesetinterface"

ipconf_name                     = "scalesetconf"

max_batch_instance_percent      =  21

max_unhealthy_instance_percent  =  22

max_unhealthy_upgraded_instance_percent = 23

pause_time_between_batches      = "PT30S"


key                             = "Environment"

value                           = "Production"
