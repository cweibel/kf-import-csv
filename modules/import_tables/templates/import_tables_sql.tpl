\copy public.apps ("GUID", "Created At", "Name", "Space GUID", "Stack GUID", "Buildpack GUID", "Memory", "Instances", "Disk", "State", "Buildpack", "Detected Buildpack", "Health Check Type", "Docker Password", "Ports", "Command", "Migration Assessment") FROM '${csv_path}/Apps.csv' DELIMITER ',' CSV HEADER QUOTE '"' ESCAPE '''';
\copy public.assertionlist ("Type", "Field", "Severity", "Name", "Description") FROM '${csv_path}/Assertion List.csv' DELIMITER ',' CSV HEADER QUOTE '"' ESCAPE '''';
\copy public.buildpacks ("GUID", "Created At", "Name", "Stack", "Position", "Migration Assessment") FROM '${csv_path}/Buildpacks.csv' DELIMITER ',' CSV HEADER QUOTE '"' ESCAPE '''';
\copy public.domains ("GUID", "Created At", "Name", "Router Group Type", "Internal?", "Migration Assessment") FROM '${csv_path}/Domains.csv' CSV QUOTE '"' ESCAPE '''';
\copy public.featureflags ("Name", "Enabled", "Migration Assessment") FROM '${csv_path}/Feature Flags.csv' DELIMITER ',' CSV HEADER QUOTE '"' ESCAPE '''';
\copy public.isolationsegments ("GUID", "Created At", "Name", "Migration Assessment") FROM '${csv_path}/Isolation Segments.csv' DELIMITER ',' CSV HEADER QUOTE '"' ESCAPE '''';
\copy public.organizations ("GUID", "Created At", "Name", "Billing Enabled", "Migration Assessment") FROM '${csv_path}/Organizations.csv' DELIMITER ',' CSV HEADER QUOTE '"' ESCAPE '''';
\copy public.platforminfo ("Name", "Build", "Version", "Description", "OSB API Version", "Migration Assessment") FROM '${csv_path}/Platform Info.csv' DELIMITER ',' CSV HEADER QUOTE '"' ESCAPE '''';
\copy public.routes ("GUID", "Created At", "Host", "Path", "Domain GUID", "Space GUID", "Service Instance GUID", "Port", "Migration Assessment") FROM '${csv_path}/Routes.csv' DELIMITER ',' CSV HEADER QUOTE '"' ESCAPE '''';
\copy public.servicebindings ("GUID", "Created At", "Name", "App GUID", "Service Instance GUID", "Has Credentials?", "Has Syslog Drain?", "Has Volume Mounts?", "Tags", "Migration Assessment") FROM '${csv_path}/Service Bindings.csv' DELIMITER ',' CSV HEADER QUOTE '"' ESCAPE '''';
\copy public.servicebrokers ("GUID", "Created At", "Name", "Broker URL", "Migration Assessment") FROM '${csv_path}/Service Brokers.csv' DELIMITER ',' CSV HEADER QUOTE '"' ESCAPE '''';
\copy public.serviceinstances ("GUID", "Created At", "Name", "Description", "Service Plan GUID", "Space GUID", "Type", "Tags", "Migration Assessment") FROM '${csv_path}/Service Instances.csv' DELIMITER ',' CSV HEADER QUOTE '"' ESCAPE '''';
\copy public.serviceplans ("GUID", "Created At", "Name", "Description", "Service GUID", "Public?", "Unique ID", "Migration Assessment") FROM '${csv_path}/Service Plans.csv' DELIMITER ',' CSV HEADER QUOTE '"' ESCAPE '''';
\copy public.services ("GUID", "Created At", "Label", "Service Broker GUID", "Service Broker Name", "Tags", "Migration Assessment") FROM '${csv_path}/Services.csv' DELIMITER ',' CSV HEADER QUOTE '"' ESCAPE '''';
\copy public.spaces ("GUID", "Created At", "Name", "Organization GUID", "Quota GUID", "Isolation Segment GUID", "Migration Assessment") FROM '${csv_path}/Spaces.csv' DELIMITER ',' CSV HEADER QUOTE '"' ESCAPE '''';
\copy public.stacks ("GUID", "Created At", "Name", "Migration Assessment") FROM '${csv_path}/Stacks.csv' DELIMITER ',' CSV HEADER QUOTE '"' ESCAPE '''';
\copy public.tasks ("GUID", "Created At", "Name", "App GUID", "Migration Assessment") FROM '${csv_path}/Tasks.csv' DELIMITER ',' CSV HEADER QUOTE '"' ESCAPE '''';
\copy public.userprovidedservices ("GUID", "Created At", "Name", "Space GUID", "Credentials", "Syslog Drain URL", "Route Service URL", "Type", "Tags", "Migration Assessment") FROM '${csv_path}/User Provided Services.csv' DELIMITER ',' CSV HEADER QUOTE '"' ESCAPE '''';


update apps set foundation_name = '${foundation_name}' where foundation_name is null;
update assertionlist set foundation_name = '${foundation_name}' where foundation_name is null;
update buildpacks set foundation_name = '${foundation_name}' where foundation_name is null;
update domains set foundation_name = '${foundation_name}' where foundation_name is null;
update featureflags set foundation_name = '${foundation_name}' where foundation_name is null;
update isolationsegments set foundation_name = '${foundation_name}' where foundation_name is null;
update organizations set foundation_name = '${foundation_name}' where foundation_name is null;
update platforminfo set foundation_name = '${foundation_name}' where foundation_name is null;
update routes set foundation_name = '${foundation_name}' where foundation_name is null;
update servicebindings set foundation_name = '${foundation_name}' where foundation_name is null;
update servicebrokers set foundation_name = '${foundation_name}' where foundation_name is null;
update serviceinstances set foundation_name = '${foundation_name}' where foundation_name is null;
update serviceplans set foundation_name = '${foundation_name}' where foundation_name is null;
update services set foundation_name = '${foundation_name}' where foundation_name is null;
update spaces set foundation_name = '${foundation_name}' where foundation_name is null;
update stacks set foundation_name = '${foundation_name}' where foundation_name is null;
update tasks set foundation_name = '${foundation_name}' where foundation_name is null;
update userprovidedservices set foundation_name = '${foundation_name}' where foundation_name is null;

select count(*) as count_of_apps, foundation_name from apps group by foundation_name order by foundation_name;
select count(*) as count_of_assertionlist, foundation_name from assertionlist group by foundation_name order by foundation_name;
select count(*) as count_of_buildpacks foundation_name from buildpacks group by foundation_name order by foundation_name;
select count(*) as count_of_domains, foundation_name from domains group by foundation_name order by foundation_name;
select count(*) as count_of_featureflags, foundation_name from featureflags group by foundation_name order by foundation_name;
select count(*) as count_of_isolationsegments, foundation_name from isolationsegments group by foundation_name order by foundation_name;
select count(*) as count_of_organizations, foundation_name from organizations group by foundation_name order by foundation_name;
select count(*) as count_of_platforminfo, foundation_name from platforminfo group by foundation_name order by foundation_name;
select count(*) as count_of_routes, foundation_name from routes group by foundation_name order by foundation_name;
select count(*) as count_of_servicebindings, foundation_name from servicebindings group by foundation_name order by foundation_name;
select count(*) as count_of_servicebrokers, foundation_name from servicebrokers group by foundation_name order by foundation_name;
select count(*) as count_of_serviceinstances, foundation_name from serviceinstances group by foundation_name order by foundation_name;
select count(*) as count_of_serviceplans, foundation_name from serviceplans group by foundation_name order by foundation_name;
select count(*) as count_of_services, foundation_name from services group by foundation_name order by foundation_name;
select count(*) as count_of_spaces, foundation_name from spaces group by foundation_name order by foundation_name;
select count(*) as count_of_stacks, foundation_name from stacks group by foundation_name order by foundation_name;
select count(*) as count_of_tasks, foundation_name from tasks group by foundation_name order by foundation_name;
select count(*) as count_of_userprovidedservices, foundation_name from userprovidedservices group by foundation_name order by foundation_name;