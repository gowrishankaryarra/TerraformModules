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

variable "resource_group" {

    type                = string
  
}

variable "server_name" {

    type         = string
  
}

variable "location" {

    type         = string

}

variable "server_version" {

    type        = string
  
}

variable "admin_login" {

    type        = string
  
}

variable "admin_login_password" {

    type        = string
}

variable "database_name" {

    type        = string
  
}

variable "database_location" {

    type        = string

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