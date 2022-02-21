
create table if not exists cataloge_executors (
	executors_id primary key, 
	nickname varchar(50) not null,
	);


create table if not exists List_albums (
	album_id primary key,
	album_name varchar(50) NOT NULL,
    year_of_release_album integer NOT NULL 
);

create table if not exists List_tracks ( 
	track id primary key,
	track_name varchar(60) not null,
	tame NUMERIC NOT null,
	album_id integer REFERENCES List_albums (album_id)
	);

create table if not exists albums_executors ( 
	id_in_order primary key,
	executors_id integer REFERENCES cataloge_executors (executors_id),
	album_id  integer REFERENCES List_albums (album_id)
	);

create table if not exists genres_executors (
	id_in_order primary key,
	executors_id integer REFERENCES cataloge_executors (executors_id),
	genre_id  not integer REFERENCES List_of_genres (genre_id),
	);

create table if not exists List_of_genres (
	genre_id primary key,
	genre_name varchar(40) not null
	);
	
create table if not exists List_collections (
	collection_id primary key not null,
	name_collection varchar(40) not null,
	year_of_release_col integer NOT NULL,
	);
	
create table if not exists tracks_in_collection (
	id_in_order primary key not null,
	track_id  integer REFERENCES List_tracks (track_id),
	collection_id  integer REFERENCES List_collections (collection id), 
	);
	


