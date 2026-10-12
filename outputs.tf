output "alerts_id" {
  description = "Map of id values across all alerts, keyed the same as var.alerts except keys with no id are omitted"
  value       = { for k, v in snowflake_alert.alerts : k => v.id if v.id != null && length(v.id) > 0 }
}
output "alerts_action" {
  description = "Map of action values across all alerts, keyed the same as var.alerts except keys with no action are omitted"
  value       = { for k, v in snowflake_alert.alerts : k => v.action if v.action != null && length(v.action) > 0 }
}
output "alerts_alert_schedule" {
  description = "Map of alert_schedule values across all alerts, keyed the same as var.alerts except keys with no alert_schedule are omitted"
  value       = { for k, v in snowflake_alert.alerts : k => one(v.alert_schedule) if v.alert_schedule != null && length(v.alert_schedule) > 0 }
}
output "alerts_comment" {
  description = "Map of comment values across all alerts, keyed the same as var.alerts except keys with no comment are omitted"
  value       = { for k, v in snowflake_alert.alerts : k => v.comment if v.comment != null && length(v.comment) > 0 }
}
output "alerts_condition" {
  description = "Map of condition values across all alerts, keyed the same as var.alerts except keys with no condition are omitted"
  value       = { for k, v in snowflake_alert.alerts : k => v.condition if v.condition != null && length(v.condition) > 0 }
}
output "alerts_database" {
  description = "Map of database values across all alerts, keyed the same as var.alerts except keys with no database are omitted"
  value       = { for k, v in snowflake_alert.alerts : k => v.database if v.database != null && length(v.database) > 0 }
}
output "alerts_enabled" {
  description = "Map of enabled values across all alerts, keyed the same as var.alerts except keys with no enabled are omitted"
  value       = { for k, v in snowflake_alert.alerts : k => v.enabled if v.enabled != null }
}
output "alerts_fully_qualified_name" {
  description = "Map of fully_qualified_name values across all alerts, keyed the same as var.alerts except keys with no fully_qualified_name are omitted"
  value       = { for k, v in snowflake_alert.alerts : k => v.fully_qualified_name if v.fully_qualified_name != null && length(v.fully_qualified_name) > 0 }
}
output "alerts_name" {
  description = "Map of name values across all alerts, keyed the same as var.alerts except keys with no name are omitted"
  value       = { for k, v in snowflake_alert.alerts : k => v.name if v.name != null && length(v.name) > 0 }
}
output "alerts_schema" {
  description = "Map of schema values across all alerts, keyed the same as var.alerts except keys with no schema are omitted"
  value       = { for k, v in snowflake_alert.alerts : k => v.schema if v.schema != null && length(v.schema) > 0 }
}
output "alerts_warehouse" {
  description = "Map of warehouse values across all alerts, keyed the same as var.alerts except keys with no warehouse are omitted"
  value       = { for k, v in snowflake_alert.alerts : k => v.warehouse if v.warehouse != null && length(v.warehouse) > 0 }
}

