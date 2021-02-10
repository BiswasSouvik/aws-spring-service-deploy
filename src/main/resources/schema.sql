SET sql_mode = '';

create table if not exists roles (
  id int(11) not null auto_increment,
  permission varchar(255) default null,
  primary key (id),
  unique key permission (permission)
) engine=innodb ;

create table if not exists  user (
  id int(11) not null auto_increment,
  username varchar(100) not null,
  password varchar(1024) not null,
  email varchar(1024) not null,
  enabled tinyint(4) not null,
  accountNonExpired tinyint(4) not null,
  credentialsNonExpired tinyint(4) not null,
  accountNonLocked tinyint(4) not null,
  primary key (id),
  unique key username (username)
) engine=innodb ;

create table if not exists role_user (
  role_id int(11) default null,
  user_id int(11) default null,
  key role_id (role_id),
  key user_id (user_id),
  constraint role_user_ibfk_1 foreign key (role_id) references roles (id),
  constraint role_user_ibfk_2 foreign key (user_id) references user (id)
) engine=innodb ;