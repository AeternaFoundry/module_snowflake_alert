resource "snowflake_alert" "alerts" {
  for_each = var.alerts

  action    = each.value.action
  condition = each.value.condition
  database  = each.value.database
  name      = each.value.name
  schema    = each.value.schema
  warehouse = each.value.warehouse
  comment   = each.value.comment
  enabled   = each.value.enabled

  dynamic "alert_schedule" {
    for_each = each.value.alert_schedule != null ? [each.value.alert_schedule] : []
    content {
      dynamic "cron" {
        for_each = alert_schedule.value.cron != null ? [alert_schedule.value.cron] : []
        content {
          expression = cron.value.expression
          time_zone  = cron.value.time_zone
        }
      }
      interval = alert_schedule.value.interval
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

