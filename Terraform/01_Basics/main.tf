resource "local_file" "tf_example1" {
  filename = "${path.module}/tf_example-${count.index}.txt"
  content  = "changed it"
  count    = 2
}

resource "local_sensitive_file" "tf_example_1" {
  filename = "${path.module}/example2.txt"
  content = "apply it"
  }