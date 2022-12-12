CREATE TABLE family_members 
(
	id SERIAL,
	name VARCHAR(30),
	gender VARCHAR(30),
	species VARCHAR(30),
	num_books_read int	
);

INSERT INTO family_members VALUES(1,'Dave','male','human', 200);
INSERT INTO family_members VALUES(2,'Mary','female','human',180);
INSERT INTO family_members VALUES(3,'Pickles','male','dog',0);

-- 1.Tum verileri tek bir tabloda gosteren query yazin.
SELECT * FROM family_members;


--2.name and species sutunlarini gosteren query yazin.
SELECT name, species FROM family_members;

--2.dog a ait tum satirlari donduren query yazin.
SELECT * FROM family_members WHERE species='dog';

--4.num_books_read degeri 190'dan buyuk olan aile uyelerine ait tum satirlari donduren query yazin.
SELECT * FROM family_members WHERE num_books_read>190;


CREATE TABLE character
(
	id int,
	name VARCHAR(30)
);
	
INSERT INTO character  VALUES (1,'Dogie Howser');
INSERT INTO character Values (2,'Barney Stinson');
INSERT INTO character VALUES (3,'Lily Aldlrin');
INSERT INTO character Values (4,'Willow Rosenberg');

CREATE TABLE character_tv_show 
(
	character_id int,
	tv_show_name VARCHAR(30)
);

INSERT INTO character_tv_show VALUES (4,'Buffy the Vampire Slayer');
INSERT INTO character_tv_show VALUES (3,'How I Met Your Mother');
INSERT INTO character_tv_show VALUES (2,'How I Met Your Mother');
INSERT INTO character_tv_show VALUES (1, 'Doogie Howser, M.D.');


CREATE TABLE character_actor
(
	character_id int,
	actor_name VARCHAR(30)
);

INSERT INTO character_actor VALUES (4,'Alyson Hannigan');
INSERT INTO character_actor VALUES (3,'Alyson Hannigan');
INSERT INTO character_actor VALUES (2,'Neil Patrick Harris');
INSERT INTO character_actor VALUES (1,'Neil Patrick Harris');

--5.Her character adini oynayan actor eslestirmek icin inner join kullanarak query yazin.


SELECT name,actor_name FROM character 
INNER JOIN character_actor 
ON character.id= character_actor.character_id;









































