resource "google_project" "project" {
  name       = "My Project"
  project_id = "your-project-id"
  org_id     = "1234567"
}

resource "google_project_service" "services" {
  count = length(var.services)
  service = var.services[count.index]
}