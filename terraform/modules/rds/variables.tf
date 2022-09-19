variable "storage_size" {
  description = "Capacity of database"
  type = string
}

variable "rds_instance_class" {
  description = "Instance class for the RDS db"
  type = string
}

variable "instance_name" {
  description = "Name of the RDS instance"
  type = string
}

variable "rds_username" {
  description = "User name used to acces the db"
  type = string
}

variable "rds_password" {
  description = "Password for the db user"
  type = string
  sensitive   = true
}
