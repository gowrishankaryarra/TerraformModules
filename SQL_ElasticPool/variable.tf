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

variable "server_name" {

    type    = string
  
}

variable "resource_group_name" {

    type                = string
  
}
variable "pool_name" {

    type            = string
  
}

variable "pool_location" {

    type        = string
  
}

variable "edition" {

    type        = string
  
}

variable "dtu" {

    type        = number
  
}

variable "db_dtu_min" {

    type        = number
  
}

variable "db_dtu_max" {

    type        = number
  
}

variable "pool_size" {

    type        = number
  
}



variable "key" {

    type          = string
    
  
}

variable "value" {

    type           = string
    
  
}

variable "tags" {

    type        = "map"


default = {
    
    
}
}