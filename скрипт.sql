create table if not exists tracks_in_albums (
	id_in_order primary key, 
	album_id not null references cataloge_executors
 (executors_id ), 
	track_id not null REFERENCES List_collections (track_id) AND List_tracks (track_id)
);

create table if not exists List albums (
	album_id primary key varchar(40),
	album_name text,
	executors_id not null references cataloge_executors
    (executors_id ),
    year_of_release_album integer NOT NULL 
);

create table if not exists cataloge_executors (
	executors_id primary key, 
	nickname text not null,
	title track text not null,
	tame numeric
	);
	
create table if not exists List_tracks ( 
	track id primary key varchar(40) not null references tracks_in_albums (track_id),
	track_name varchar(40) not null,
	tame NUMERIC NOT null
	);

create table if not exists albums_executors ( 
	id_in_order primary key,
	executors_id not null REFERENCES cataloge_executors
 (executors_id),
	album_id  not null REFERENCES List_albums (album_id)
	);

create table if not exists genres_executors (
	id_in_order primary key,
	executors id not null REFERENCES cataloge_executors
 (executors_id),
	genre_id  not null REFERENCES List_of_genres (genre_id),
	);

create table if not exists List of genres (
	genre id primary key,
	genre name text not null
	);
	
create table if not exists List_collections (
	collection id primary key not null,
	name_collection varchar(40) not null,
	year_of_release_col integer NOT NULL,
	track id varchar(60) not null 
	);
	
