terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "2.5.2"
    }
  }
}

module "create_files" {
  source = "./file_creator"
  filename_1 = "my_first_file"
  file1_content = "from_file1"

  filename_2 = "my_second_file"
  file2_content = "from_file2"
}

output "file_paths" {
    value = [
        module.create_files.file1_path,
        module.create_files.file1_path
    ]
}

#output "file_contents" {
 #@   value = [
   #     module.create_files.file1_content
  #      module.create_files.file2_content
 #   ]
#}