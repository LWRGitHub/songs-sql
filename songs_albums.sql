
-- creating album set up
CREATE TABLE Albums (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(70) NOT NULL,
    artist VARCHAR(70) NOT NULL,
    year_published INTEGER NOT NULL
);

-- creating song set up
CREATE TABLE Songs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title VARCHAR(50) NOT NULL,
    album_id INTEGER NOT NULL,
    FOREIGN KEY (album_id) REFERENCES Albums(id)
);
 
--  Albums added
INSERT INTO Albums
    (name, artist, year_published)
VALUES
    ('The Dark Side of the Moon', 'Pink Floyd', 1973),
    ('Abbey Road', 'The Beatles', 1969),
    ('Hotel California', 'Eagles', 1976),
    ('Born in the U.S.A.', 'Bruce Springsteen', 1984),
    ('California', 'Blink-182', 2016)
;

-- Songs added
INSERT INTO Songs
    (title, album_id)
VALUES
    ('The Dark Side of the Moon', 1),
    ('Abbey Road', 2),
    ('Hotel California', 3),
    ('Born in the U.S.A.', 4),
    ('California', 5)
;


SELECT * FROM Songs;

SELECT * FROM Albums;

/* 
 * Table join query to construct a table of Song Name : Album Name
 */
SELECT * FROM Songs
JOIN Albums ON Songs.album_id = Albums.id;


/*
 * Finds all albums published between 1970 and 1980.
 */
SELECT * FROM Albums
where Albums.year_published  <= 1970 And Albums.year_published >= 1980;

/*
 * Finds all songs on albums published between 1970 and 1980. 
 */

SELECT * FROM Songs
JOIN Albums ON Songs.album_id = Albums.id
where Albums.year_published  <= 1970 And Albums.year_published >= 1980;

 
/*
 * Finds all songs on albums with names containing 'California'.
 */

SELECT * FROM Songs
JOIN Albums ON Songs.album_id = Albums.id
where name like "%California%";