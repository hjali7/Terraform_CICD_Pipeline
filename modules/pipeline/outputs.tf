output "pipeline_file_path" {
  description = "The full path to the generated pipeline YAML file"
  value = local_file.pipeline_yaml.filename
}