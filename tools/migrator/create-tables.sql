create table if not exists AGENT (
  id bigint auto_increment unique,
  approved char(1) not null,
  hostName varchar(255),
  ip varchar(255),
  region varchar(255),
  state varchar(20),
  port int default 0,
  system_stat varchar(1000),
  version varchar(256) default '',
  primary key (id)
);
#########################################################
create table if not exists NUSER (
  id bigint auto_increment unique,
  created_date timestamp,
  last_modified_date timestamp,
  authentication_provider_class varchar(255),
  description varchar(255),
  email varchar(255),
  enabled char(1) not null,
  is_external char(1),
  mobile_phone varchar(255),
  password varchar(255),
  role_name varchar(255) not null,
  timeZone varchar(255),
  user_id varchar(255) not null unique,
  user_language varchar(255),
  user_name varchar(255),
  created_user bigint,
  last_modified_user bigint,
  primary key (id)
);
#########################################################
create table if not exists PERF_TEST (
  id bigint auto_increment unique,
  created_date timestamp,
  last_modified_date timestamp,
  agent_count int,
  description text,
  distribution_path varchar(255),
  duration bigint,
  errors bigint,
  finish_time timestamp,
  ignore_sample_count int,
  ramp_up_init_count int,
  ramp_up_init_sleep_time int,
  last_progress_message text,
  mean_test_time double,
  peak_tps double,
  port int,
  ramp_up_step int,
  ramp_up_increment_interval int,
  processes int,
  progress_message text,
  run_count int,
  scheduled_time timestamp,
  script_name varchar(255),
  script_revision bigint,
  send_mail char(1),
  start_time timestamp,
  status varchar(255),
  stop_request char(1),
  tag_string varchar(255),
  target_hosts text,
  test_comment text,
  test_error_cause varchar(255),
  name varchar(255),
  test_time_standard_deviation double,
  tests bigint,
  threads int,
  threshold varchar(255),
  tps double,
  use_rampup char(1),
  vuser_per_agent int,
  created_user bigint,
  last_modified_user bigint,
  region varchar(255),
  safe_distribution char(1) default 'F',
  agent_stat text,
  running_sample text,
  monitor_stat text,
  sampling_interval int default 1,
  param varchar(256) default '',
  ramp_up_type varchar(10) default 'PROCESS',
  primary key (id)
);
#########################################################
create table if not exists PERF_TEST_TAG (
  perf_test_id bigint not null,
  tag_id bigint not null,
  primary key (perf_test_id, tag_id)
);
#########################################################
create table if not exists TAG (
  id bigint auto_increment unique,
  created_date timestamp,
  last_modified_date timestamp,
  tagValue varchar(255),
  created_user bigint,
  last_modified_user bigint,
  primary key (id)
);
#########################################################
create table if not exists SYSTEM_MONITOR (
  id bigint auto_increment unique,
  collect_time bigint,
  cpu_used_percentage float,
  free_memory bigint,
  ip varchar(255),
  monitor_key varchar(255),
  message varchar(255),
  port int not null,
  system varchar(255),
  total_memory bigint,
  primary key (id)
);
#########################################################
create table if not exists SHARED_USER (
  owner_id bigint not null,
  follow_id bigint not null,
  primary key (owner_id, follow_id)
);
