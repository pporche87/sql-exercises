-- Solution SQL for the project from the Relational Queries course ("Famous people")

/* Create table about the people and what they do here */

CREATE TABLE actors (id INTEGER PRIMARY KEY, actor TEXT, city TEXT, state TEXT, country TEXT);

INSERT INTO actors (actor, city, state, country) VALUES ("H. Jon Benjamin", "Worcester", "Massaschusetts", "USA");

INSERT INTO actors (actor, city, state, country) VALUES ("Dan Mintz", "Anchorage", "Alaska", "USA");

INSERT INTO actors (actor, city, state, country) VALUES ("Eugene Mirman", "Unknown", "Moscow", "Russia");

INSERT INTO actors (actor, city, state, country) VALUES ("John Robers", "Unknown", "Unknown", "USA");

INSERT INTO actors (actor, city, state, country) VALUES ("Larry Murphy", "Abington", "Massachusetts", "USA");

INSERT INTO actors (actor, city, state, country) VALUES ("David Herman", "New York City", "New York", "USA");

INSERT INTO actors (actor, city, state, country) VALUES ("Andy Kindler", "Unknown", "Unknown", "Unknown");

INSERT INTO actors (actor, city, state, country) VALUES ("Bobby Tisdale", "Unknown", "Unknown", "Unknown");

INSERT INTO actors (actor, city, state, country) VALUES ("Sarah Silverman", "Bedford", "New Hampshire", "USA");

INSERT INTO actors (actor, city, state, country) VALUES ("Laura Silverman", "Unknown", "Unknown", "Unknown");

CREATE TABLE shows (actor TEXT, show1 TEXT, show2 TEXT);

INSERT INTO shows (actor, show1, show2) VALUES ("H. Jon Benjamin", "Bob's Burgers", "Archer");

INSERT INTO shows (actor, show1, show2) VALUES ("Jessica Walter", "Archer", "Arrested Development");

INSERT INTO shows (actor, show1, show2) VALUES ("Eugene", "Bob's Burgers", "Archer");

INSERT INTO shows (actor, show1, show2) VALUES ("Aisha Taylor", "Archer", "Criminal Minds");

INSERT INTO shows (actor, show1, show2) VALUES ("Sarah Silverman", "Bob's Burgers", "Louie");

SELECT actors.actor, shows.show1, shows.show2 FROM actors JOIN shows ON actors.actor = shows.actor
