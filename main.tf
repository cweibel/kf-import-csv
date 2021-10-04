locals {
    psql_connection_string = "/Library/PostgreSQL/14/bin/psql 'postgres://postgres:redactd@127.0.0.1:5433/fun9'"
    create_tables_template = "templates/create_table.tpl"
    create_tables_output_file = "create_table.sh"
    artifact_folder = "artifacts"

}


## Create Tables
data "template_file" "create_tables_template" {
  template = "${file("./${local.create_tables_template}")}"

  vars = {
    psql_connection_string = local.psql_connection_string
  }
}


resource "local_file" "create_tables_template" {
    content     = data.template_file.create_tables_template.rendered
    filename    = "${local.artifact_folder}/${local.create_tables_output_file}"

  provisioner "local-exec"  {
      command = "${local.artifact_folder}/${local.create_tables_output_file} "
  }
}



# Import Foundation #1
module "import_tables_1" {
  source = "./modules/import_tables"

    depends_on = [
      local_file.create_tables_template,
    ]

    csv_path = "/Users/chris/Downloads/drive-download-20211001T141448Z-001"
    foundation_name = "dev"
    psql_connection_string = local.psql_connection_string

}

# Import Foundation #2
module "import_tables_2" {
  source = "./modules/import_tables"

    csv_path = "/Users/chris/Downloads/drive-download-20211001T141448Z-001"
    foundation_name = "prod"
    psql_connection_string = local.psql_connection_string

    depends_on = [
      module.import_tables_1,
    ]

}

# Import Foundation #3

module "import_tables_3" {
  source = "./modules/import_tables"

    csv_path = "/Users/chris/Downloads/drive-download-20211001T141448Z-001"
    foundation_name = "staging"
    psql_connection_string = local.psql_connection_string

    depends_on = [
      module.import_tables_2,
    ]

}