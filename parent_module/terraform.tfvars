rgs = {
  rg01 = {

    name     = "prod-rg"
    location = "centralindia"
  }
}

vnts = {

  vnet01 = {
    name                = "dev-vnet"
    resource_group_name = "dev-rg"
    location            = "centralindia"
    address_space       = ["10.192.0.0/24"]
  }
}
snts = {
  snts01 = {
    name                 = "frintend-sub"
    resource_group_name  = "dev-rg"
    virtual_network_name = "dev-vnet"
    address_prefixes     = ["10.192.0.0/26"]
  }
}

