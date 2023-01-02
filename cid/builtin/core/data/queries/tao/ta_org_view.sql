CREATE OR REPLACE VIEW "ta_org_view" AS 
SELECT DISTINCT
"ip address",
"checkname",
"accountparentname",
"accountid",
"category",
"checkid",
"issuppressed",
"resourceid",
"region",
"accountparentid",
"timestamp",
"accountname",
"status",
"acl allows list",
"bucket name",
"acl allows upload/delete",
"region name",
"policy allows access",
"ignored bucket name",
"region api parameter",
"password policy",
"reason",
"number",
"uppercase",
"lowercase",
"non-alphanumeric",
"write enabled",
"same owner",
"target exists",
"target name",
"trail name",
"logging status",
"last delivery error",
"access key",
"key last rotated",
"iam user",
"mfa delete enabled",
"versioning",
"current usage",
"service",
"limit amount",
"limit name",
"snapshot id",
"volume name",
"snapshot age",
"volume attachment",
"volume id",
"snapshot name",
"volume type",
"volume size",
"monthly storage cost",
"max daily median",
"number of days over",
"day 14",
"day 13",
"day 12",
"day 11",
"day 10",
"day 1",
"day 2",
"day 3",
"day 8",
"day 9",
"day 4",
"day 5",
"day 6",
"day 7",
"region/az",
"14-day average cpu utilization",
"instance type",
"instance name",
"estimated monthly savings",
"14-day average network i/o",
"number of days low utilization",
"instance id",
"instances in zone a",
"instances in zone b",
"instances in zone e",
"instances in zone f",
"instances in zone c",
"instances in zone d",
"load balancer associated",
"auto scaling group name",
"health check",
"total inbound rules",
"total outbound rules",
"vpc id",
"db instance",
"multi-az",
"security group id",
"ports",
"security group name",
"protocol",
"port",
"ip range",
"customer gateway",
"vpc",
"active tunnels",
"vpn id",
"virtual private gateway",
"distribution domain name",
"distribution id",
"alternate domain name",
"hosted zone name",
"hosted zone id",
"number of name server delegations used",
"number of days over 90% cpu utilization",
"resource name",
"launch configuration name",
"launch type",
"resource type",
"launch name",
"backup retention period",
"description",
"instance count",
"group id",
"resource record set identifier",
"resource record set type",
"alias target",
"resource record set name",
"headers",
"cache behavior path pattern",
"lookback period (days)",
"upfront cost",
"payment option",
"hourly commitment to purchase",
"estimated savings percentage",
"term (years)",
"savings plan type",
"estimated average utilization",
"origin",
"days since last connection",
"db instance name",
"storage provisioned (gb)",
"estimated monthly savings (on demand)",
"cluster",
"estimated break even (months)",
"platform",
"expected average ri utilization",
"estimated on-demand cost post recommended ri purchase (monthly)",
"recommended number of ris to purchase",
"upfront cost of ris",
"estimated savings with recommendation (monthly)",
"estimated cost of ris (monthly)",
"load balancer name",
"# of zones",
"access key id",
"case id",
"certificate name",
"connection details",
"connection id for vif",
"connection id",
"current monthly cost",
"data transfer out (gb)",
"database edition",
"database engine",
"db instance or cluster id",
"deadline",
"deployment option",
"ebs optimized",
"estimated cost of reserved instances (monthly)",
"estimated cost of reserved nodes (monthly)",
"estimated on-demand cost post recommended reserved instance purchase (monthly)",
"estimated on-demand cost post recommended reserved nodes purchase (monthly)",
"expected average reserved instance utilization",
"expected average reserved node utilization",
"expected avergae reserved instance utilization",
"expected avergae reserved node utilization",
"expiration date",
"family",
"fraud type",
"gateway id",
"ingress rule",
"instance class",
"instance size",
"license model",
"load balancer port",
"location for vif",
"location",
"node type",
"private db instances",
"product description",
"public db instances",
"ratio of transfer to storage",
"rds security group name",
"recommended number of reserved instances to purchase",
"recommended number of reserved nodes to purchase",
"reserved instance id",
"resource record set id",
"s3 storage (gb)",
"security group ids",
"time near maximum",
"time updated",
"ttl",
"upfront cost of reserved instances",
"upfront cost of reserved nodes",
"usage (usd per day)",
"user name (iam or root)",
"zone",
"function arn",
"max daily error rate",
"date for max error rate",
"average daily error rate",
"lost daily compute cost",
"current day invokes",
"current day error rate",
"average daily invokes",
"last refresh time",
"max daily timeout rate",
"date of max daily timeout rate",
"average daily timeout rate",
"function timeout setting",
"current day timeout rate",
"runtime",
"days to deprecation",
"deprecation date",
"resource"
FROM
  "ta_organizational_view_reports"
WHERE  
NOT REGEXP_LIKE(timestamp, 'Z') 
AND (("from_unixtime"(CAST("timestamp" AS decimal)) > (current_date - INTERVAL  '3' MONTH)))
AND (status IS NULL OR status not in ('ok', 'Green'))