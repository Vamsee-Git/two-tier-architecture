<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.11.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_database"></a> [database](#module\_database) | ./modules/database | n/a |
| <a name="module_security_groups"></a> [security\_groups](#module\_security\_groups) | ./modules/security_groups | n/a |
| <a name="module_vpc"></a> [vpc](#module\_vpc) | ./modules/vpc | n/a |
| <a name="module_web_servers"></a> [web\_servers](#module\_web\_servers) | ./modules/web_servers | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_availability_zones"></a> [availability\_zones](#input\_availability\_zones) | Availability zones | `list(string)` | n/a | yes |
| <a name="input_db_allocated_storage"></a> [db\_allocated\_storage](#input\_db\_allocated\_storage) | Allocated storage for database | `number` | n/a | yes |
| <a name="input_db_instance_class"></a> [db\_instance\_class](#input\_db\_instance\_class) | Instance class for database | `string` | n/a | yes |
| <a name="input_db_name"></a> [db\_name](#input\_db\_name) | Database name | `string` | n/a | yes |
| <a name="input_db_name_prefix"></a> [db\_name\_prefix](#input\_db\_name\_prefix) | Name prefix for database | `string` | n/a | yes |
| <a name="input_db_password"></a> [db\_password](#input\_db\_password) | Database password. | `string` | n/a | yes |
| <a name="input_db_username"></a> [db\_username](#input\_db\_username) | Database username. | `string` | n/a | yes |
| <a name="input_private_subnets"></a> [private\_subnets](#input\_private\_subnets) | Private subnets | `list(string)` | n/a | yes |
| <a name="input_public_subnets"></a> [public\_subnets](#input\_public\_subnets) | Public subnets | `list(string)` | n/a | yes |
| <a name="input_sg_name_prefix"></a> [sg\_name\_prefix](#input\_sg\_name\_prefix) | Name prefix for security groups | `string` | n/a | yes |
| <a name="input_vpc_cidr_block"></a> [vpc\_cidr\_block](#input\_vpc\_cidr\_block) | CIDR block for the VPC | `string` | n/a | yes |
| <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name) | Name of the VPC | `string` | n/a | yes |
| <a name="input_web_ami_id"></a> [web\_ami\_id](#input\_web\_ami\_id) | AMI ID for web servers | `string` | n/a | yes |
| <a name="input_web_instance_count"></a> [web\_instance\_count](#input\_web\_instance\_count) | Number of web server instances | `number` | `2` | no |
| <a name="input_web_instance_type"></a> [web\_instance\_type](#input\_web\_instance\_type) | Instance type for web servers | `string` | `"t2.micro"` | no |
| <a name="input_web_name_prefix"></a> [web\_name\_prefix](#input\_web\_name\_prefix) | Name prefix for web servers | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_db_instance_id"></a> [db\_instance\_id](#output\_db\_instance\_id) | n/a |
| <a name="output_db_security_group_id"></a> [db\_security\_group\_id](#output\_db\_security\_group\_id) | n/a |
| <a name="output_private_subnets"></a> [private\_subnets](#output\_private\_subnets) | n/a |
| <a name="output_public_subnets"></a> [public\_subnets](#output\_public\_subnets) | n/a |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | n/a |
| <a name="output_web_instance_ids"></a> [web\_instance\_ids](#output\_web\_instance\_ids) | n/a |
| <a name="output_web_security_group_id"></a> [web\_security\_group\_id](#output\_web\_security\_group\_id) | n/a |
<!-- END_TF_DOCS -->