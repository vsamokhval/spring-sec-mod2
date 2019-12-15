-- SQL example for H2 (ran automatically by the spring config for the embedded H2 example)
create table if not exists persistent_logins ( 
 username varchar(100) not null,
 series varchar(64) primary key, 
 token varchar(64) not null, 
 last_used timestamp not null 
);

create table if not exists users (
 id int(11) not null auto_increment primary key,
 sso_id varchar(64) not null,
 password varchar(255) not null,
 first_name varchar(64),
 last_name varchar(64),
 email varchar(64),
 user_role tinyint(2) not null
);