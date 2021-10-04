create table if not exists Apps  ( "GUID" text, "Created At" text, "Name" text, "Space GUID" text, "Stack GUID" text, "Buildpack GUID" text, "Memory" text, "Instances" text, "Disk" text, "State" text, "Buildpack" text, "Detected Buildpack" text, "Health Check Type" text, "Docker Password" text, "Ports" text, "Command" text, "Migration Assessment" text , "foundation_name" text  );
create table if not exists AssertionList ( "Type" text , "Field" text , "Severity" text,"Name" text,"Description" text, "foundation_name" text  );
create table if not exists Buildpacks ( "GUID" text, "Created At" text, "Name" text, "Stack" text, "Position" text, "Migration Assessment" text , "foundation_name" text  );
create table if not exists Domains ( "GUID" text, "Created At" text, "Name" text, "Router Group Type" text, "Internal?" text, "Migration Assessment" text , "foundation_name" text  );
create table if not exists FeatureFlags ( "Name" text, "Enabled" text, "Migration Assessment" text , "foundation_name" text  );
create table if not exists IsolationSegments ( "GUID" text, "Created At" text, "Name" text, "Migration Assessment" text , "foundation_name" text  );
create table if not exists Organizations ( "GUID" text, "Created At" text, "Name" text, "Billing Enabled" text, "Migration Assessment" text , "foundation_name" text  );
create table if not exists PlatformInfo ( "Name" text, "Build" text, "Version" text, "Description" text, "OSB API Version" text, "Migration Assessment" text , "foundation_name" text  );
create table if not exists Routes ( "GUID" text, "Created At" text, "Host" text, "Path" text, "Domain GUID" text, "Space GUID" text, "Service Instance GUID" text, "Port" text, "Migration Assessment" text , "foundation_name" text  );
create table if not exists ServiceBindings ( "GUID" text, "Created At" text, "Name" text, "App GUID" text, "Service Instance GUID" text, "Has Credentials?" text, "Has Syslog Drain?" text, "Has Volume Mounts?" text, "Tags" text, "Migration Assessment" text , "foundation_name" text  );
create table if not exists ServiceBrokers ( "GUID" text, "Created At" text, "Name" text, "Broker URL" text, "Migration Assessment" text , "foundation_name" text  );
create table if not exists ServiceInstances ( "GUID" text, "Created At" text, "Name" text, "Description" text, "Service Plan GUID" text, "Space GUID" text, "Type" text, "Tags" text, "Migration Assessment" text , "foundation_name" text  );
create table if not exists ServicePlans ( "GUID" text, "Created At" text, "Name" text, "Description" text, "Service GUID" text, "Public?" text, "Unique ID" text, "Migration Assessment" text , "foundation_name" text  );
create table if not exists Services ( "GUID" text, "Created At" text, "Label" text, "Service Broker GUID" text, "Service Broker Name" text, "Tags" text, "Migration Assessment" text , "foundation_name" text  );
create table if not exists Spaces ( "GUID" text, "Created At" text, "Name" text, "Organization GUID" text, "Quota GUID" text, "Isolation Segment GUID" text, "Migration Assessment" text , "foundation_name" text  );
create table if not exists Stacks ( "GUID" text, "Created At" text, "Name" text, "Migration Assessment" text , "foundation_name" text  );
create table if not exists Tasks ( "GUID" text, "Created At" text, "Name" text, "App GUID" text, "Migration Assessment" text , "foundation_name" text  );
create table if not exists UserProvidedServices ( "GUID" text, "Created At" text, "Name" text, "Space GUID" text, "Credentials" text, "Syslog Drain URL" text, "Route Service URL" text, "Type" text, "Tags" text, "Migration Assessment" text , "foundation_name" text  );

