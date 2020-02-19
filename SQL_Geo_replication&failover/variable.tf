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

variable "primary_resource_group_name" {

    type                = string
  
}

variable "primary_server_name" {

    type         = string
  
}

variable "primary_database_name" {

    type        = string
  
}

variable "secondary_server_name" {

    type        = string
  
}

variable "secondary_resource_group_name" {

    type        = string
  
}

variable "secondary_location" {

    type        = string
  
}

variable "secondary_server_version" {

    type        = string
  
}
variable "admin_login" {

    type        = string
  
}

variable "admin_password" {

    type        = string
  
}

variable "failover_name" {

    type        = string
  
}

variable "mode" {

    type        = string
  
}

variable "grace_minutes" {

    type        = number
  
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