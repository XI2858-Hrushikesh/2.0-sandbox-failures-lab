resource "page" "intro" {
  title = "Sandbox Failures Lab"
  file  = "instructions/intro.md"

  activities = {
    check_nginx = resource.task.check_nginx
  }
}
