resource "local_file" "pipeline_yaml" {
  filename = "${path.module}/${var.pipeline_name}"

  content = yamlencode({
    stages = var.stages

    jobs = {
      for job_name, job_details in var.jobs : job_name => {
        stage  = job_details.stage
        script = job_details.script
      }
    }
  })

  file_permission = "0644"
}
