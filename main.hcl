resource "lab" "main" {
  title       = "Sandbox Failures Lab"
  description = "A lab to test and document sandbox failure scenarios"

  settings {
    timelimit {
      duration   = "60m"
      show_timer = true
    }
  }

  layout = resource.layout.two_column

  content {
    chapter "getting_started" {
      title = "Getting Started"

      page "intro" {
        reference = resource.page.intro
      }
    }
  }
}
