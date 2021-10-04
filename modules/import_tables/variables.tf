variable "csv_path" {
  description = "Location of where the CSV files."
  type        = string
}

variable "foundation_name" {
  description = "Nickname for the CF deployment, no spaces please."
  type        = string
}

variable "psql_connection_string" {
  description = "full string and arguements to launch psql."
  type        = string
}


