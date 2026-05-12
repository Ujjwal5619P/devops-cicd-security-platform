package container

deny contains msg if {
  input.privileged == true
  msg := "Privileged containers are not allowed"
}