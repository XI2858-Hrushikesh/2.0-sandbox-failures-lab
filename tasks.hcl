resource "task" "check_nginx" {
  description = "Verify nginx is running"

  config {
    target = resource.container.webserver
  }

  condition "nginx_running" {
    description = "Check that nginx is serving on port 80"

    check {
      script          = "scripts/check_nginx.sh"
      failure_message = "Nginx is not running on port 80"
    }
  }
}
