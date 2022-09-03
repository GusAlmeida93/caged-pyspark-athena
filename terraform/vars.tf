variable "project_name" {
  type        = string
  description = "Project name"
  default     = "caged-pyspark-athena"
}

variable "tags" {
  type        = map(any)
  description = "Tags"
  default = {
    Name    = "CAGED Pyspark Athena"
    Project = "MBA XP Engenharia de Dados"
  }
}

variable "region" {
  type        = string
  description = "Region"
  default     = "us-east-1"
}

variable "profile" {
  type        = string
  description = "Profile"
  default     = "datasouls"
}