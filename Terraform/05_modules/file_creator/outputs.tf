output "file1_path" {
    description = "this is file1 output"
    value = local_file.file1.filename
}

output "file2_path" {
    description = "this is file2 output"
    value = local_file.file2.filename
}