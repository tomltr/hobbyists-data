CREATE DATABASE hobbyists_data;

use hobbyists_data;

 CREATE TABLE hobbyist
 (
  	`id` int(11) auto_increment not null,
	`name` varchar(50) not null,
	`email` varchar(50) not null,
	`hobby` varchar(50) not null,
	`favorite_site` varchar(50) not null,
	`url` varchar(100) not null,
	`has_pet` enum('Yes', 'No') not null,
	`joined_date` date not null,
    	primary key(`id`)
  );

INSERT INTO hobbyist (name, email, hobby, favorite_site, url, has_pet, joined_date) VALUES('Gimli', 'gimli@moria.com', 'Killing Goblins', 'Lego Lord of The Rings', 'https://lego-lord-of-the-rings.fandom.com/wiki/Gimli', 'No', '2019-09-27');

INSERT INTO hobbyist (name, email, hobby, favorite_site, url, has_pet, joined_date) VALUES('Witch King', 'wk@mordor.com', 'Hunting', 'Shadow Of War Fandom', 'https://shadowofwar.fandom.com/wiki/Witch-king_of_Angmarr', 'Yes', '2019-09-26');

INSERT INTO hobbyist (name, email, hobby, favorite_site, url, has_pet, joined_date) VALUES('Legolas', 'legolas@rivendell.com', 'Archering Orcs', 'Hero Fandom', 'https://hero.fandom.com/wiki/Legolas', 'No', '2019-09-26');

INSERT INTO hobbyist (name, email, hobby, favorite_site, url, has_pet, joined_date) VALUES('Boromir', 'nedstark@winterfell.com', 'Protector', 'Game of Thrones Fandom', 'hhttps://gameofthrones.fandom.com/wiki/Eddard_Stark', 'Yes', '2019-09-25');

INSERT INTO hobbyist (name, email, hobby, favorite_site, url, has_pet, joined_date) VALUES('Sam', 'sammy@shire.com', 'Carrier', 'Screen Rant', 'https://screenrant.com/lord-of-the-rings-samwise-gamgee-trivia-facts/', 'No', '2019-09-25');

INSERT INTO hobbyist (name, email, hobby, favorite_site, url, has_pet, joined_date) VALUES('Aragon II Elessar', 'aragon@middleeearth.com', 'Adventuring', 'Lord of the Rings Fandom', 'https://lotr.fandom.com/wiki/Aragorn_II_Elessar', 'Yes', '2019-09-24');

INSERT INTO hobbyist (name, email, hobby, favorite_site, url, has_pet, joined_date) VALUES('Meriadoc', 'meriadoc@shire.com', 'Eating', 'Lord of the Rings Books', 'https://lord-of-the-rings.org/books/meriadoc.html', 'No', '2019-09-25');

INSERT INTO hobbyist (name, email, hobby, favorite_site, url, has_pet, joined_date) VALUES('Frodo', 'savior@shire.com', 'Bring peace to Middle Earth', 'Tolkiengateway', 'http://tolkiengateway.net/wiki/Frodo_Baggins', 'No', '2019-09-26');

INSERT INTO hobbyist (name, email, hobby, favorite_site, url, has_pet, joined_date) VALUES('Pippin', 'pipping@shire.com', 'Shouting', 'Lyrics Freak', 'https://www.lyricsfreak.com/l/lord+of+the+rings/pippins+song_20627254.html', 'No', '2019-09-24');

INSERT INTO hobbyist (name, email, hobby, favorite_site, url, has_pet, joined_date) VALUES('Gandalf', 'mithrandir@middleeearth.com', 'Save Middle Earth', 'Positive Life Project', 'https://positivelifeproject.com/gandalf-quotes', 'Yes', '2019-09-27');






