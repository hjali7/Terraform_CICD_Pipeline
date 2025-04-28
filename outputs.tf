output "generated_pipeline_file" {
  description = "Path of the generated pipeline YAML file from module"
  value = module.pipeline.pipeline_file_path
}