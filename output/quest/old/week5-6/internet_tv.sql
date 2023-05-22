
-- channelsテーブルを作成
CREATE TABLE channels (
    id INT AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

-- programsテーブルを作成
CREATE TABLE programs (
    id INT AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    description TEXT,
    PRIMARY KEY (id)
);

-- program_channelテーブルを作成
CREATE TABLE program_channel (
    program_id INT,
    channel_id INT,
    PRIMARY KEY (program_id, channel_id),
    FOREIGN KEY (program_id) REFERENCES programs(id),
    FOREIGN KEY (channel_id) REFERENCES channels(id)
);

-- genresテーブルを作成
CREATE TABLE genres (
    id INT AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

-- program_genresテーブルを作成
CREATE TABLE program_genres (
    program_id INT,
    genre_id INT,
    PRIMARY KEY (program_id, genre_id),
    FOREIGN KEY (program_id) REFERENCES programs(id),
    FOREIGN KEY (genre_id) REFERENCES genres(id)
);

-- episodesテーブルを作成
CREATE TABLE episodes (
    id INT AUTO_INCREMENT,
    program_id INT,
    season_number INT,
    episode_number INT,
    title VARCHAR(100),
    description TEXT,
    duration INT,
    release_date DATETIME,
    view_count INT,
    PRIMARY KEY (id),
    FOREIGN KEY (program_id) REFERENCES programs(id)
);

-- broadcastsテーブルを作成
CREATE TABLE broadcasts (
    id INT AUTO_INCREMENT,
    channel_id INT,
    program_id INT,
    episode_id INT,
    broadcast_time DATETIME,
    PRIMARY KEY (id),
    FOREIGN KEY (channel_id) REFERENCES channels(id),
    FOREIGN KEY (program_id) REFERENCES programs(id),
    FOREIGN KEY (episode_id) REFERENCES episodes(id)
);

-- usersテーブルを作成
CREATE TABLE users (
    id INT AUTO_INCREMENT,
    username VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    PRIMARY KEY (id),
    UNIQUE (email)
);

-- user_viewsテーブルを作成
CREATE TABLE user_views (
    id INT AUTO_INCREMENT,
    user_id INT,
    episode_id INT,
    view_date DATETIME,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (episode_id) REFERENCES episodes(id)
);

-- favoritesテーブルを作成
CREATE TABLE favorites (
    id INT AUTO_INCREMENT,
    user_id INT,
    program_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (program_id) REFERENCES programs(id)
);

-- view_historyテーブルを作成
CREATE TABLE view_history (
    id INT AUTO_INCREMENT,
    user_id INT,
    episode_id INT,
    viewed_at DATETIME,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (episode_id) REFERENCES episodes(id)
);
