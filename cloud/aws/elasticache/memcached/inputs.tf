# Global Terraform
variable "environment" {
  description = "Architecture Environment"
  type        = "string"
}

# Global DataDog
variable "delay" {
  description = "Delay in seconds for the metric evaluation"
  default     = 900
}

variable "message" {
  description = "Message sent when an alert is triggered"
}

variable "filter_tags_use_defaults" {
  description = "Use default filter tags convention"
  default     = "true"
}

variable "filter_tags_custom" {
  description = "Tags used for custom filtering when filter_tags_use_defaults is false"
  default     = "*"
}

# elasticache variable
variable "elasticache_size" {
  description = "Size of the Elasticache instance"
  type        = "string"
}

# Memcached specific
variable "get_hits_silenced" {
  description = "Groups to mute for Elasticache memcached get hits monitor"
  type        = "map"
  default     = {}
}

variable "get_hits_message" {
  description = "Custom message for Elasticache memcached get hits monitor"
  type        = "string"
  default     = ""
}

variable "get_hits_timeframe" {
  description = "Monitor timeframe for Elasticache memcached get hits [available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`]"
  default     = "last_15m"
}

variable "get_hits_threshold_warning" {
  description = "Elasticache memcached get hits warning threshold in percentage"
  default     = 20
}

variable "get_hits_threshold_critical" {
  description = "Elasticache memcached get hits critical threshold in percentage"
  default     = 10
}

variable "cpu_high_silenced" {
  description = "Groups to mute for Elasticache memcached cpu high monitor"
  type        = "map"
  default     = {}
}

variable "cpu_high_message" {
  description = "Custom message for Elasticache memcached cpu high monitor"
  type        = "string"
  default     = ""
}

variable "cpu_high_time_aggregator" {
  description = "Monitor aggregator for Elasticache memcached cpu high [available values: min, max or avg]"
  type        = "string"
  default     = "min"
}

variable "cpu_high_timeframe" {
  description = "Monitor timeframe for Elasticache memcached cpu high [available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`]"
  default     = "last_15m"
}

variable "cpu_high_threshold_warning" {
  description = "Elasticache memcached cpu high warning threshold in percentage"
  default     = 75
}

variable "cpu_high_threshold_critical" {
  description = "Elasticache memcached cpu high critical threshold in percentage"
  default     = 90
}

variable "swap_silenced" {
  description = "Groups to mute for Elasticache memcached swap monitor"
  type        = "map"
  default     = {}
}

variable "swap_message" {
  description = "Custom message for Elasticache memcached swap monitor"
  type        = "string"
  default     = ""
}

variable "swap_time_aggregator" {
  description = "Monitor aggregator for Elasticache memcached swap [available values: min, max or avg]"
  type        = "string"
  default     = "min"
}

variable "swap_timeframe" {
  description = "Monitor timeframe for Elasticache memcached swap [available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`]"
  default     = "last_5m"
}

variable "swap_threshold_warning" {
  description = "Elasticache memcached swap warning threshold in percentage"
  default     = 0
}

variable "swap_threshold_critical" {
  description = "Elasticache memcached swap critical threshold in percentage"
  default     = 50
}

variable "free_memory_silenced" {
  description = "Groups to mute for Elasticache memcached free memory monitor"
  type        = "map"
  default     = {}
}

variable "free_memory_message" {
  description = "Custom message for Elasticache memcached free memory monitor"
  type        = "string"
  default     = ""
}

variable "free_memory_time_aggregator" {
  description = "Monitor aggregator for Elasticache memcached free memory [available values: min, max or avg]"
  type        = "string"
  default     = "min"
}

variable "free_memory_timeframe" {
  description = "Monitor timeframe for Elasticache memcached free memory [available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`]"
  default     = "last_15m"
}

variable "free_memory_threshold_warning" {
  description = "Elasticache memcached free memory warning threshold in percentage"
  default     = 10
}

variable "free_memory_threshold_critical" {
  description = "Elasticache memcached free memory critical threshold in percentage"
  default     = 5
}
