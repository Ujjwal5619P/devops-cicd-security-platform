package security

deny contains msg if {
  input.image_tag == "latest"
  msg := "Latest image tag is not allowed"
}