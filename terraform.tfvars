pipeline_name = "ci-pipeline.yml"

stages = [
  "build",
  "test",
  "deploy"
]

jobs = {
  build_job = {
    stage  = "build"
    script = ["echo Building project..."]
  }
  test_job = {
    stage  = "test"
    script = ["echo Running tests..."]
  }
  deploy_job = {
    stage  = "deploy"
    script = ["echo Deploying to production..."]
  }
}
