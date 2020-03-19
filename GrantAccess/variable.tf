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



variable "role_definition_id" {

    type    = string
  
}

variable "role_name" {

    type    = string
  
}

variable "actions" {

    type    = string
  
}

variable "role_assignment_name" {
  
    type      = string
}

variable "principle_id" {

    type      = string
    description = "The ID of the principle(User,Group,service or application)"
  
}




