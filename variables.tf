variable "environment" {
  description = "The environment name (dev, stage, prod)"
  type        = string
}

variable "pipeline_name" {
  description = "The name of the pipeline yaml file to generate"
  type        = string
}

variable "stages" {
  description = "List of stages in the pipeline"
  type        = list(string)
}

variable "jobs" {
  description = "Map of jobs with their settings"
  type = map(object({
    stage  = string
    script = list(string)
  }))
}
