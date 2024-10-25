create database task
use task
create schema movie
create table movie.actor(
act_id int primary key,
act_fname char(20),
act_lname char(20),
act_gender char(20)
)
create table movie.director(
dir_id int primary key,
dir_fname char(20),
dir_lname char(20)
)
create table movie.movie_direection(
dir_id int,
mov_id int
)
create table movie.movie_cast(
act_id int,
mov_id int,
role char(30)
)
create table movie.movie(
mov_id int primary key,
mov_title char(50),
mov_year int,
mov_time int,
mov_lang char(50),
mov_dt_rel date,
mov_rel_country char(5)
)
create table movie.reviewer(
rev_id int primary key,
rev_name char(30)
)
create table movie.genres(
gen_id int primary key ,
gen_title char (20)
)
create table movie.movie_genres(
mov_id int ,
gen_id int
)
create table movie.rating(
mov_id int,
rev_id int,
rev_stars int,
num_o_ratings int
)










