resource "local_file" "tf_example1" {
  filename = "${path.module}/tf_example-1.txt"
  content  = "changed it"
}

resource "local_file" "tf_example2" {
  filename = "${path.module}/tf_example-2.txt"
  content  = "changed it to something"
}
resource "local_sensitive_file" "tf_example_1" {
  filename = "${path.module}/example-3.txt"
  content = "apply it"
  }