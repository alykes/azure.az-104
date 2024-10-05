# Microsoft Azure - AZ-104 Course Material

This repository serves as a reference for course materials to aid in studying for the Microsoft AZ-104 exam.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name                                                                | Version |
|---------------------------------------------------------------------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | 4.1.0   |

## Providers

| Name                                                          | Version |
|---------------------------------------------------------------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 4.1.0   |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_monitor_action_group.am_ag](https://registry.terraform.io/providers/hashicorp/azurerm/4.1.0/docs/resources/monitor_action_group) | resource |
| [azurerm_resource_group.rg_az104](https://registry.terraform.io/providers/hashicorp/azurerm/4.1.0/docs/resources/resource_group) | resource |

## Inputs

| Name                                                                                               | Description               | Type     | Default | Required |
|----------------------------------------------------------------------------------------------------|---------------------------|----------|---------|:--------:|
| <a name="input_country_code"></a> [country\_code](#input\_country\_code)                           | The country code          | `string` | n/a     |   yes    |
| <a name="input_mobile_no"></a> [mobile\_no](#input\_mobile\_no)                                    | Admin Mobile phone number | `string` | n/a     |   yes    |
| <a name="input_storage_account_name"></a> [storage\_account\_name](#input\_storage\_account\_name) | Storage Account Name      | `string` | n/a     |   yes    |
| <a name="input_sub_id"></a> [sub\_id](#input\_sub\_id)                                             | The subscription ID       | `string` | n/a     |   yes    |

## Outputs

| Name                                                                             | Description |
|----------------------------------------------------------------------------------|-------------|
| <a name="output_Resource_Group"></a> [Resource\_Group](#output\_Resource\_Group) | n/a         |
<!-- END_TF_DOCS -->