# kf-import-csv
Import KF csv files into postgres


## Requirements

Pretty basic:

 - Postgres instance running locally
 - A batch of csv files in a folder for a foundation.  
 - Install of `terraform` CLI

## To Use

Modify `main.tf` with the following:

 - `psql_connection_string` - full connection string which contains the path to psql and any parameters like port, user name, database name, password you need to connect to the postgres db
 - Add and configure as many csv folder + foundation names as needed

   ```
   module "import_tables_1" {
     source = "./modules/import_tables"
   
       depends_on = [
         local_file.create_tables_template,
       ]
   
       csv_path = "/Users/chris/Downloads/drive-download-20211001T141448Z-001"     <==== Local folder path to the csv files goes here
       foundation_name = "dev"                                                     <==== Nickname of the foundation goes here, no spaces in the name please
       psql_connection_string = local.psql_connection_string
   
   }
   ```

 - Follow the pattern above in the example provided, you'll be fine, remember to update the "depends_on" to point to the previous import, these have to run sequentially and not in parallel because of the UDPATE statements.

Then run:

```
terraform init
terraform apply
```

## Notes

 - To add additional foundations, add them in `main.tf` and be sure to run `terraform init --upgrade` to initiate the additional module declarations
 - `terraform destroy` cleans up the files its created during the apply, but leaves the database alone (no deletes/truncates/anything destructive)
 - A short summary of the rows in each table per foundation are emitted as part of the `terraform apply` but only as part of a new folder import.  If we want to run less ad-hoc queries, let me know and I'll make something that can be run more automagically.