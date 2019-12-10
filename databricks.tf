resource "azurerm_resource_group" "example" {
  name     = "rj-"
  location = "West US"
}

resource "azurerm_databricks_workspace" "example" {
  name                = "databricks-test"
  resource_group_name = "${azurerm_resource_group.example.name}"
  location            = "${azurerm_resource_group.example.location}"
  sku                 = "standard"

  tags = {
    Environment = "Production"
    Owner = "Rob J"
  }
}
