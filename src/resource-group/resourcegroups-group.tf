resource "aws_resourcegroups_group" "resource-group" {
  name = var.name

  resource_query {
    type  = var.type
    query = <<JSON
{
  "ResourceTypeFilters": ${jsonencode(var.resource_type_filters)},
  "TagFilters": ${jsonencode(var.tag_filters)}
}
JSON
  }

  tags = local.tags
}