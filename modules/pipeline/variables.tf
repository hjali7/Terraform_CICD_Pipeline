variable "pipeline_name" {
  description = "The name of the pipeline yaml file to generate"
  type        = string
}

variable "stages" {
  description = "List of stages for the pipeline"
  type        = list(string)
}

variable "jobs" {
  description = "Map of jobs with details (stage and script)"
  type = map(object({
    stage  = string
    script = list(string)
  }))
}
