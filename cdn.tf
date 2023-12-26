provider "azurerm" {
  features {}
}

resource "azurerm_frontdoor_cdn_profile" "cdn_profile" {
  name                = var.cdn_profile_name
  resource_group_name = var.resource_group_name
  sku                 = "Standard_Microsoft"

  tags = {
    environment = var.environment
  }
}

resource "azurerm_frontdoor_endpoint" "endpoint" {
  name                = var.endpoint_name
  resource_group_name = var.resource_group_name
  front_door_id       = azurerm_frontdoor.frontdoor.id
  hostname            = var.hostname

  tags = {
    environment = var.environment
  }
}

resource "azurerm_frontdoor_origin_group" "origin_group" {
  name                = var.origin_group_name
  resource_group_name = var.resource_group_name
  front_door_id       = azurerm_frontdoor.frontdoor.id

  tags = {
    environment = var.environment
  }
}

resource "azurerm_frontdoor_origin" "origin" {
  name                = var.origin_name
  resource_group_name = var.resource_group_name
  front_door_id       = azurerm_frontdoor.frontdoor.id
  host_name           = var.host_name

  tags = {
    environment = var.environment
  }
}

resource "azurerm_frontdoor_route" "route" {
  name                = var.route_name
  resource_group_name = var.resource_group_name
  front_door_id       = azurerm_frontdoor.frontdoor.id
  frontend_endpoints  = [azurerm_frontdoor_endpoint.endpoint.name]

  routing_rule {
    name               = var.routing_rule_name
    accepted_protocols = ["Https"]
    patterns_to_match  = ["/"]
    enabled_state      = true

    forwarding_configuration {
      forward_type           = "ForwardToBackend"
      backend_pool_name      = var.backend_pool_name
      caching_enabled        = true
      dynamic_compression    = true
      send_waf_request_trace = true
    }

    route_configuration {
      custom_forwarding_path = var.custom_forwarding_path
    }

    tags = {
      environment = var.environment
    }
  }
}

/*
.
├── main.tf
├── variables.tf
├── outputs.tf
└── modules
    └── frontdoor_cdn
        ├── main.tf
        ├── variables.tf
        └── outputs.tf
*/


module "frontdoor_cdn" {
  source = "./modules/frontdoor_cdn"

  resource_group_name = "example-rg"
  cdn_profile_name    = "example-cdn"
  endpoint_name       = "example-endpoint"
  origin_group_name   = "example-origin-group"
  origin_name         = "example-origin"
  route_name          = "example-route"
  routing_rule_name   = "example-routing-rule"
  backend_pool_name   = "example-backend-pool"
  custom_forwarding_path = "example-forwarding-path"
  hostname            = "example.azurefd.net"
  host_name           = "example.azurewebsites.net"
  environment         = "dev"
}
