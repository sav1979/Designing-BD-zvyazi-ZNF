create table if not exists cataloge executors (
	executors id primary key varchar(40) unique not null references List repertoire, 
	nickname varchar(40) unique not null, 
	genre id primary key varchar(50) unique not null 
);

create table if not exists List albums (
	executors id varchar(40) not null, 
	album id primary key varchar(40) unique references name collection,
	album name primary key text unique references List repertoire,
	year of release date
);

create table if not exists List tracks (
	album id primary key varchar(40) not null references List albums, 
	track id primary key varchar(40) not null references name collection,
	title track text not null,
	tame numeric
	);
	
	
create table if not exists List of genres (
	genre id primary key varchar(40) unique not null references List repertoire,
	genre name text not null
	);
	
create table if not exists List repertoire (
	genre id varchar(40) not null ,
	executors id varchar(40) not null,
	album name varchar(40) not null,
	track id varchar(40) not null 
	);
	
create table if not exists name collection (
	collection id primary key varchar(40) unique not null references collections,
	album id varchar(40) not null,
	track id varchar(40) not null 
	);
	
create table if not exists collection (
	collection id varchar(40) not null,
	name collection text not null,
	year collection date not null 
	);