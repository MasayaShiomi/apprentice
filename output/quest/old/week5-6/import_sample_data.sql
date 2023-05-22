-- channelsデータを登録する
LOAD DATA INFILE 'target_path/csv/channels.csv'
INTO TABLE channels
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
(id, name);



-- genresデータを登録する
LOAD DATA INFILE 'target_path/csv/genres.csv'
INTO TABLE genres
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
(id, name);


-- usersデータを登録する
LOAD DATA INFILE 'target_path/csv/users.csv'
INTO TABLE users
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
(id, username, email, password);



-- programsデータを登録する
LOAD DATA INFILE 'target_path/csv/programs.csv'
INTO TABLE programs
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
(id, title, description);



-- program_channelデータを登録する
LOAD DATA INFILE 'target_path/csv/program_channel.csv'
INTO TABLE program_channel
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
(program_id, channel_id);



-- program_genresデータを登録する
LOAD DATA INFILE 'target_path/csv/program_genres.csv'
INTO TABLE program_genres
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
(program_id, genre_id);



-- episodesデータを登録する
LOAD DATA INFILE 'target_path/csv/episodes.csv'
INTO TABLE episodes
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
(id, program_id, season_number, episode_number, title, description, duration, release_date, view_count);



-- broadcastsデータを登録する
LOAD DATA INFILE 'target_path/csv/broadcasts.csv'
INTO TABLE broadcasts
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
(id, channel_id, program_id, episode_id, broadcast_time);



-- user_viewsデータを登録する
LOAD DATA INFILE 'target_path/csv/user_views.csv'
INTO TABLE user_views
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
(id, user_id, episode_id, view_date);


-- favoritesデータを登録する
LOAD DATA INFILE 'target_path/csv/favorites.csv'
INTO TABLE favorites
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
(id, user_id, program_id);


-- view_historyデータを登録する
LOAD DATA INFILE 'target_path/csv/view_history.csv'
INTO TABLE view_history
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
(id, user_id, episode_id, viewed_at);



