use reveng;
create table author (
   id bigint not null auto_increment,
   version bigint not null,
   name varchar(255) not null,
   primary key (id)
) ENGINE=InnoDB;

create table author_books (
   author_id bigint not null,
   book_id bigint not null,
   primary key (author_id, book_id)
) ENGINE=InnoDB;

create table book (
   id bigint not null auto_increment,
   version bigint not null,
   title varchar(255) not null,
   primary key (id)
) ENGINE=InnoDB;

create table compos (
   first_name varchar(255) not null,
   last_name varchar(255) not null,
   version bigint not null,
   other varchar(255) not null,
   primary key (first_name, last_name)
) ENGINE=InnoDB;

create table compound_unique (
   id bigint not null auto_increment,
   version bigint not null,
   prop1 varchar(255) not null,
   prop2 varchar(255) not null,
   prop3 varchar(255) not null,
   prop4 varchar(255) not null,
   prop5 varchar(255) not null,
   primary key (id),
   unique (prop4, prop3, prop2)
) ENGINE=InnoDB;

create table library (
   id bigint not null auto_increment,
   version bigint not null,
   name varchar(255) not null,
   primary key (id)
) ENGINE=InnoDB;

create table other (
   username varchar(255) not null,
   nonstandard_version_name bigint not null,
   primary key (username)
) ENGINE=InnoDB;

create table role (
   id bigint not null auto_increment,
   version bigint not null,
   authority varchar(255) not null unique,
   primary key (id)
) ENGINE=InnoDB;

create table thing (
   thing_id bigint not null auto_increment,
   version bigint not null,
   email varchar(255) not null unique,
   float_value float not null,
   name varchar(123),
   primary key (thing_id)
) ENGINE=InnoDB;

create table user (
   id bigint not null auto_increment,
   version bigint not null,
   account_expired bit not null,
   account_locked bit not null,
   enabled bit not null,
   password varchar(255) not null,
   password_expired bit not null,
   username varchar(255) not null unique,
   primary key (id)
) ENGINE=InnoDB;

create table user_roles (
   role_id bigint not null,
   user_id bigint not null,
   date_updated datetime not null,
   primary key (role_id, user_id)
) ENGINE=InnoDB;

create table visit (
   id bigint not null auto_increment,
   library_id bigint not null,
   person varchar(255) not null,
   visit_date datetime not null,
   primary key (id)
) ENGINE=InnoDB;

alter table author_books add index FK24C812F21FA913A (book_id),
add constraint FK24C887F63FA913A foreign key (book_id) references book (id);

alter table author_books add index FK24C812F34D85EDFA (author_id),
add constraint FK24C898F6CD85EDFA foreign key (author_id) references author (id);

alter table user_role add index FK143BF46A55688A1A (role_id),
add constraint FK1426BF46A52388A1A foreign key (role_id) references role (id);

alter table user_role add index FK143BF46AF2634DFA (user_id),
add constraint FK195BF46AF7634DFA foreign key (user_id) references user (id);

alter table visit add index FK6B04D4B2EEC8BBA (library_id),
add constraint FK6B17D4B4AEC8BBA foreign key (library_id) references library (id);