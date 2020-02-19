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

variable "name" {

    description             = "Name of the Azure AD Application"

    type                    =  string
  
}

variable "Home_page" {

    description             = "Enter the Home Page(Ex: https://homepage)"

    type                    =  string
  
}

variable "identifier_uris" {

    description             = "Enter the uris"

    type                    =  string
  
}

variable "reply_urls" {

    description             = "Enter the reply urls"

    type                    =  string
  
}

variable "available_to_other_tenants" {

    description             = "Ture or False"

    type                    =  string
  
}

variable "oauth2_allow_implicit_flow" {

    description             = "Ture or False"

    type                    =  string
  
}








