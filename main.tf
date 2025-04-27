terraform {
  required_version = ">= 1.0.0"
  required_providers {
    local = {
        source = "hashicorp/local"
        version = "~> 2.4"
    }
  }
}

provider local{}

module "pipeline" {
  source = "./modules/pipeline"
  pipeline_name = var.pipeline_name
  stages = var.stages
  jobs = var.jobs
}