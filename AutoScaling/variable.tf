variable "client_id" {

    type  = string
  
}

variable "subscription_id" {

    type  = string
  
}

variable "tenant_id" {

    type  = string
  
}

variable "client_secret" {

    type  = string
  
}

variable "resource_group_name" {

    type    = string
  
}

variable "vnet_name" {

    type         = string
    
   
}

variable "location" {

    type         = string
    
}

variable "address_space" {

    type         = string
    
}

variable "subnet_prefix" {

    type          = string
    
    
}

variable "subnet_name" {

    type           = string
    
}

variable "publicip_name" {

    type = string
   
}


variable "allocation_method" {


    type = string

}

variable "lb_name" {

    type    = string
  
}

variable "frontend_ipconfig_name" {

    type        = string
  
}

variable "backend_addresspool_name" {

    type        = string
  
}

variable "lb_natpool_name" {

    type        = string
  
}

variable "natpool_protocol" {

    type        = string
  
}

variable "frontend_port_start" {

    type         = number
  
}

variable "frontend_port_end" {

    type        = number
  
}

variable "backend_port" {

    type        = number
  
}

variable "probe_name" {

    type        = string
  
}

variable "probe_port" {

    type        = number
  
}

variable "probe_protocol" {

    type        = string
  
}

variable "lb_rule_name" {

    type        = string
  
}

variable "lb_rule_frontend_port" {

    type        = number
  
}

variable "lb_rule_backend_port" {

    type        = number
  
}


variable "scaleset_name" {

    type        = string
  
}

variable "scaleset_sku" {

    type        = string
  
}

variable "instances" {

    type        = number
  
}

variable "computer_name" {

    type        = string  
}


variable "admin_username" {

    type        = string
  
}

variable "admin_password" {

    type    = string
  
}

variable "upgrade_mode" {

    type    = string
  
}

variable "publisher" {

    type            = string
    
  
}

variable "offer" {

    type            = string
    

}

variable "sku" {

    type            = string
    
  
}

variable "image_version" {

    type            = string
    
  
}

variable "os-diskname" {

    type            = string
    
  
}

variable "create_option" {

    type            = string
    
  
}

variable "managed_disk_type" {

    type            = string
    
  
}

variable "network_interface_name" {

    type            = string
  
}

variable "ipconf_name" {

    type            = string
  
}

variable "max_batch_instance_percent" {

    type            = number
  
}

variable "max_unhealthy_instance_percent" {

    type            = number
  
}

variable "max_unhealthy_upgraded_instance_percent" {

    type            = number
  
}

variable "pause_time_between_batches" {

    type            = string
  
}


variable "key" {

    type          = string
    description   = "Tag key"
  
}

variable "value" {

    type           = string
    description    = "Tag value"
  
}

variable "tags" {

    type        = "map"


default = {
    
    
}
}
