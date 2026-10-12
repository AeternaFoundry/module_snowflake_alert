variable "alerts" {
  description = <<EOT
Map of alerts, attributes below
Required:
    - action
    - condition
    - database
    - name
    - schema
    - warehouse
Optional:
    - comment
    - enabled
    - alert_schedule (block):
        - cron (optional, block):
            - expression (required)
            - time_zone (required)
        - interval (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    action    = string
    condition = string
    database  = string
    name      = string
    schema    = string
    warehouse = string
    comment   = optional(string)
    enabled   = optional(bool)
    alert_schedule = optional(object({
      cron = optional(object({
        expression = string
        time_zone  = string
      }))
      interval = optional(number)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
}

