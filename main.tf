resource "null_resource" "fetch_cases" {
  # Use dynamic triggers to force recreation on every apply
  triggers = {
    timestamp = timestamp()
  }

  provisioner "local-exec" {
    command = "./scripts/fetch_cases.sh"
  }
}
