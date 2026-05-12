package deployment

deny contains msg if {
  input.user == "root"
  msg := "Root user deployment is not allowed"
}