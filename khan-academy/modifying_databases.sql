-- Solution SQL for the project from the Modifying databases with SQL course ("App impersonator")

/* What does the app's SQL look like? */

CREATE TABLE tweets (id INTEGER PRIMARY KEY, user TEXT, tweet TEXT);

INSERT INTO tweets (user, tweet) VALUES ("pporche87", "How to Go From Hobbyist to Professional Developer");

INSERT INTO tweets (user, tweet) VALUES ("pporche87", "I just earned the Data, Databases and SQL badge on @treehouse! Come join me & get 50% off your 1st month!");

INSERT INTO tweets (user, tweet) VALUES ("pporche87", "The saga continues... week 9! @ Crockett, California");

SELECT * FROM tweets;

UPDATE tweets SET tweet = "new tweet text" WHERE id = 1;

SELECT * FROM tweets;

DELETE FROM tweets WHERE id = 1;

SELECT * FROM tweets;
