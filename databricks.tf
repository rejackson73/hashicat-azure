resource "azurerm_databricks_workspace" "example" {
  name                = "databricks-test"
  resource_group_name = "${data.azurerm_resource_group.myresourcegroup.name}"
  location            = "${data.azurerm_resource_group.myresourcegroup.location}"
  sku                 = "standard"

  tags = {
    Environment = "Production"
    Owner = "Rob J"
  }
}
