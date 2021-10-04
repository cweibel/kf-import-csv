
locals {
    artifact_folder = "modules/import_tables/artifacts"
    import_tables_sql_template = "modules/import_tables/templates/import_tables_sql.tpl"
    import_tables_sql_output_file = "import_tables.sql"
    import_tables_template = "modules/import_tables/templates/import_tables.tpl"
    import_tables_output_file = "import_tables.sh"

}

## Import Table Data

data "template_file" "import_tables_sql_template" {
  template = "${file("./${local.import_tables_sql_template}")}"

  vars = {
    csv_path = var.csv_path
    foundation_name = var.foundation_name
  }
}

resource "local_file" "import_tables_sql_template" {
    content     = data.template_file.import_tables_sql_template.rendered
    filename    = "${local.artifact_folder}/${local.import_tables_sql_output_file}"

}

data "template_file" "import_tables_template" {
  template = "${file("./${local.import_tables_template}")}"

  vars = {
    psql_connection_string = var.psql_connection_string
  }

}


resource "local_file" "import_tables_template" {
  content     = data.template_file.import_tables_template.rendered
  filename    = "${local.artifact_folder}/${local.import_tables_output_file}"
  
  provisioner "local-exec"  {
      command = "${local.artifact_folder}/${local.import_tables_output_file} "
  }
}



