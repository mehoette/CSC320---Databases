CREATE DATABASE bibleverses;

CREATE TABLE bibleverses.books (
	id int,
	name varchar(255),
	testament varchar(255),
	bible_version varchar(255)
);

CREATE TABLE bibleverses.chapters (
	id int,
	chapter_num int,
	book_id int
);

CREATE TABLE bibleverses.verses (
id int,
	verse_num int,
	text varchar(255),
	location varchar(255),
	chapter_id int
);

CREATE TABLE bibleverses.people_verses (
	id int,
	person_id int,
	verse_id int
);

CREATE TABLE bibleverses.people (
	id int,
	name varchar(255),
	description varchar(255),
	title varchar(255)
);

CREATE TABLE bibleverses.relationships (
	id int,
	person1_id int,
	person2_id int,
	description varchar(255)
);

INSERT INTO bibleverses.books (id, name, testament, bible_version)
VALUES(1, '2 Kings', "old", "Christian Standard Bible (CSB)");

INSERT INTO bibleverses.chapters (id, chapter_num, book_id)
VALUES(1, 2, 1);

INSERT INTO bibleverses.verses (id, verse_num, text, location, chapter_id)
VALUES(1, 23, "From there Elisha went up to Bethel. As he was walking up the path, some small boys came out of the city and jeered at him, chanting, “Go up, baldy! Go up, baldy!”", "Bethel", 1);

INSERT INTO bibleverses.verses (id, verse_num, text, location, chapter_id)
VALUES(2, 24, "He turned around, looked at them, and cursed them in the name of the Lord. Then two female bears came out of the woods and mauled forty-two of the children.", "Bethel", 1);

INSERT INTO bibleverses.people (id, name, description, title)
VALUES(1, "Elisha", "Israelite prophet who succeeds Elijah", "prophet");

INSERT INTO bibleverses.people (id, name, description)
VALUES(2, "Small Boys", "Children making fun of Elisha");

INSERT INTO bibleverses.people_verses (id, person_id, verse_id)
VALUES(1, 1, 1);

INSERT INTO bibleverses.people_verses (id, person_id, verse_id)
VALUES(2, 1, 2);

INSERT INTO bibleverses.people_verses (id, person_id, verse_id)
VALUES(3, 2, 1);

INSERT INTO bibleverses.people_verses (id, person_id, verse_id)
VALUES(4, 2, 2);

INSERT INTO bibleverses.relationships (id, person1_id, person2_id, description)
VALUES(1, 1, 2, "Enemies");



INSERT INTO bibleverses.books (id, name, testament, bible_version)
VALUES(2, "Proverbs", "old", "King James Version (KJV)");

INSERT INTO bibleverses.chapters (id, chapter_num, book_id)
VALUES(2, 22, 2);

INSERT INTO bibleverses.verses (id, verse_num, text, chapter_id)
VALUES(3, 1, "A good name is rather to be chosen than great riches, and loving favour rather than silver and gold.", 2);



INSERT INTO bibleverses.books (id, name, testament, bible_version)
VALUES(3, "Psalm", "old", "New International Version (NIV)");

INSERT INTO bibleverses.chapters (id, chapter_num, book_id)
VALUES(3, 139, 3);

INSERT INTO bibleverses.verses (id, verse_num, text, chapter_id)
VALUES(4, 4, "Before a word is on my tongue you, Lord, know it completely.", 3);



INSERT INTO bibleverses.books (id, name, testament, bible_version)
VALUES(4, "Genesis", "old", "New International Version (NIV)");

INSERT INTO bibleverses.chapters (id, chapter_num, book_id)
VALUES(4, 7, 4);

INSERT INTO bibleverses.verses (id, verse_num, text, chapter_id)
VALUES(5, 13, "On that very day Noah and his sons, Shem, Ham and Japheth, together with his wife and the wives of his three sons, entered the ark", 4);

INSERT INTO bibleverses.people (id, name, description)
VALUES(3, "Noah", "Man who builds the ark");

INSERT INTO bibleverses.people (id, name, description)
VALUES(4, "Shem", "Noah’s son");

INSERT INTO bibleverses.people (id, name, description)
VALUES(5, "Ham", "Noah’s son");

INSERT INTO bibleverses.people (id, name, description)
VALUES(6, "Japheth", "Noah’s son");

INSERT INTO bibleverses.people_verses (id, person_id, verse_id)
VALUES(5, 3, 5);

INSERT INTO bibleverses.people_verses (id, person_id, verse_id)
VALUES(6, 4, 5);

INSERT INTO bibleverses.people_verses (id, person_id, verse_id)
VALUES(7, 5, 5);

INSERT INTO bibleverses.people_verses (id, person_id, verse_id)
VALUES(8, 6, 5);

INSERT INTO bibleverses.relationships (id, person1_id, person2_id, description)
VALUES(2, 3, 4, "Parent/Child");

INSERT INTO bibleverses.relationships (id, person1_id, person2_id, description)
VALUES(3, 3, 5, "Parent/Child");

INSERT INTO bibleverses.relationships (id, person1_id, person2_id, description)
VALUES(4, 3, 6, "Parent/Child");

INSERT INTO bibleverses.relationships (id, person1_id, person2_id, description)
VALUES(5, 4, 5, "Siblings");

INSERT INTO bibleverses.relationships (id, person1_id, person2_id, description)
VALUES(6, 4, 6, "Siblings");

INSERT INTO bibleverses.relationships (id, person1_id, person2_id, description)
VALUES(7, 5, 6, "Siblings");





INSERT INTO bibleverses.books (id, name, testament, bible_version)
VALUES(5, "John", "new", "Darby Translation");

INSERT INTO bibleverses.chapters (id, chapter_num, book_id)
VALUES(5, 20, 5);

INSERT INTO bibleverses.verses (id, verse_num, text, location, chapter_id)
VALUES(6, 4, " And the two ran together, and the other disciple ran forward faster than Peter, and came first to the tomb", "The Garden Tomb, Jerusalem", 5);

INSERT INTO bibleverses.people (id, name, description, title)
VALUES(7, "John", "the Disciple Whom Jesus Loved", "Saint");

INSERT INTO bibleverses.people (id, name, description, title)
VALUES(8, "Peter", "Apostle, First Pope", "Saint");

INSERT INTO bibleverses.people_verses (id, person_id, verse_id)
VALUES(9, 7, 6);

INSERT INTO bibleverses.people_verses (id, person_id, verse_id)
VALUES(10, 6, 6);

INSERT INTO bibleverses.relationships (id, person1_id, person2_id, description)
VALUES(8, 7, 8, "Friends");



INSERT INTO bibleverses.books (id, name, testament, bible_version)
VALUES(6, "1 Samuel", "Old", "World English Bible");

INSERT INTO bibleverses.chapters (id, chapter_num, book_id)
VALUES(6, 17, 6);

INSERT INTO bibleverses.verses (id, verse_num, text, location, chapter_id)
VALUES(7, 4, "A champion out of the camp of the Philistines named Goliath of Gath, whose height was six cubits and a span went out.", "Valley of Elah", 6);

INSERT INTO bibleverses.people (id, name, description)
VALUES(9, "Goliath", "Giant Philistine from Gath");

INSERT INTO bibleverses.people_verses (id, person_id, verse_id)
VALUES(11, 9, 7);







INSERT INTO bibleverses.books (id, name, testament, bible_version)
VALUES(7, "Matthew", "New", "New International Version (NIV)");

INSERT INTO bibleverses.chapters (id, chapter_num, book_id)
VALUES(7, 1, 7);

INSERT INTO bibleverses.verses (id, verse_num, text, location, chapter_id)
VALUES(8, 18, "This is how the birth of Jesus the Messiah came about: His mother Mary was pledged to be married to Joseph, but before they came together, she was found to be pregnant through the Holy Spirit.", "Nazareth", 7);

INSERT INTO bibleverses.people (id, name, description, title)
VALUES(10, "Mary", "Virgin Mary, Mother of God", "Saint");

INSERT INTO bibleverses.people (id, name, description, title)
VALUES(11, "Jesus", "Son of God. Also is God. It’s complicated", "Messiah");

INSERT INTO bibleverses.people (id, name, description, title)
VALUES(12, "Joseph", "Jesus’s Stepdad, Carpenter, Pretty cool dude.", "Saint");

INSERT INTO bibleverses.people_verses (id, person_id, verse_id)
VALUES(12, 10, 8);

#I’m only going to put verses with Jesus physically there in the people_verses table
#otherwise he’ll be in every verse because the whole point of the bible is that its about God
INSERT INTO bibleverses.people_verses (id, person_id, verse_id)
VALUES(13, 11, 8);

INSERT INTO bibleverses.people_verses (id, person_id, verse_id)
VALUES(14, 12, 8);

INSERT INTO bibleverses.relationships (id, person1_id, person2_id, description)
VALUES(9, 10, 11, "Parent/Child");

INSERT INTO bibleverses.relationships (id, person1_id, person2_id, description)
VALUES(10, 12, 11, "Stepparent/Stepchild");

INSERT INTO bibleverses.relationships (id, person1_id, person2_id, description)
VALUES(11, 10, 12, "Married");




#using Book id 4 genesis, NIV

INSERT INTO bibleverses.chapters (id, chapter_num, book_id)
VALUES(8, 4, 4);

INSERT INTO bibleverses.verses (id, verse_num, text, location, chapter_id)
VALUES(9, 8, "Now Cain said to his brother Abel, “Let’s go out to the field.” While they were in the field, Cain attacked his brother Abel and killed him.", "The field, the land of Nod", 8);

INSERT INTO bibleverses.people (id, name, description)
VALUES(13, "Cain", "First Murderer");

INSERT INTO bibleverses.people (id, name, description)
VALUES(14, "Abel", "First Murder Victim");

INSERT INTO bibleverses.people_verses (id, person_id, verse_id)
VALUES(15, 13, 9);

INSERT INTO bibleverses.people_verses (id, person_id, verse_id)
VALUES(16, 14, 9);

INSERT INTO bibleverses.relationships (id, person1_id, person2_id, description)
VALUES(12, 13, 14, "Siblings/Enemies");










INSERT INTO bibleverses.books (id, name, testament, bible_version)
VALUES(8, "Exodus", "Old", "Easy-to-Read Version (ERV)");

INSERT INTO bibleverses.chapters (id, chapter_num, book_id)
VALUES(9, 2, 8);

INSERT INTO bibleverses.verses (id, verse_num, text, location, chapter_id)
VALUES(10, 22, "Zipporah became pregnant and had a son. Moses named him Gershom because Moses was a stranger in a land that was not his own.", 9);

INSERT INTO bibleverses.people (id, name, description)
VALUES(15, "Zipporah", "Moses’s Wife");

INSERT INTO bibleverses.people (id, name, description, title)
VALUES(16, "Moses", "Led the Israelites out of Egypt", "prophet");

INSERT INTO bibleverses.people (id, name, description)
VALUES(17, "Gershom", "Moses’s Son");

INSERT INTO bibleverses.people_verses (id, person_id, verse_id)
VALUES(17, 15, 10);

INSERT INTO bibleverses.people_verses (id, person_id, verse_id)
VALUES(18, 16, 10);

INSERT INTO bibleverses.people_verses (id, person_id, verse_id)
VALUES(19, 17, 10);

INSERT INTO bibleverses.relationships (id, person1_id, person2_id, description)
VALUES(13, 15, 17, "Parent/Child");

INSERT INTO bibleverses.relationships (id, person1_id, person2_id, description)
VALUES(14, 16, 17, "Parent/Child");

INSERT INTO bibleverses.relationships (id, person1_id, person2_id, description)
VALUES(15, 15, 16, "Married");



INSERT INTO bibleverses.books (id, name, testament, bible_version)
VALUES(9, "Jeremiah", "New", "New International Version (NIV)");

INSERT INTO bibleverses.chapters (id, chapter_num, book_id)
VALUES(10, 29, 9);

INSERT INTO bibleverses.verses (id, verse_num, text, chapter_id)
VALUES(11, 12, "Then you will call on me and come and pray to me, and I will listen to you.", 10);


INSERT INTO bibleverses.books (id, name, testament, bible_version)
VALUES(10, "Collosians", "New", "English Standard Version (ESV)");

INSERT INTO bibleverses.chapters (id, chapter_num, book_id)
VALUES(11, 3, 10);

INSERT INTO bibleverses.verses (id, verse_num, text, chapter_id)
VALUES(12, 14, "And above all these put on love, which binds everything together in perfect harmony.", 11);





INSERT INTO bibleverses.books (id, name, testament, bible_version)
VALUES(11, "Revelations", "New", "New Catholic Bible (NCB)");

INSERT INTO bibleverses.chapters (id, chapter_num, book_id)
VALUES(12, 3, 11);

INSERT INTO bibleverses.verses (id, verse_num, text, chapter_id)
VALUES(13, 20, "Behold, I am standing at the door, knocking. If one of you hears my voice and opens the door, I will come in and dine with that person and that person with me.", 12);




INSERT INTO bibleverses.books (id, name, testament, bible_version)
VALUES(12, "1 Corinthians", "New", "New International Version (NIV)");

INSERT INTO bibleverses.chapters (id, chapter_num, book_id)
VALUES(13, 13, 12);

INSERT INTO bibleverses.verses (id, verse_num, text, chapter_id)
VALUES(14, 3, "If I give all I possess to the poor and give over my body to hardship that I may boast, but do not have love, I gain nothing.", 13);



INSERT INTO bibleverses.books (id, name, testament, bible_version)
VALUES(13, "Leviticus", "Old", "New International Version (NIV)");

INSERT INTO bibleverses.chapters (id, chapter_num, book_id)
VALUES(14, 22, 13);

INSERT INTO bibleverses.verses (id, verse_num, text, chapter_id)
VALUES(15, 31, "Keep my commands and follow them. I am the Lord.", 14);





INSERT INTO bibleverses.books (id, name, testament, bible_version)
VALUES(14, "1 John", "New", "New International Version (NIV)");

INSERT INTO bibleverses.chapters (id, chapter_num, book_id)
VALUES(15, 4, 14);

INSERT INTO bibleverses.verses (id, verse_num, text, chapter_id)
VALUES(16, 21, "And he has given us this command: Anyone who loves God must also love their brother and sister.", 15);






INSERT INTO bibleverses.books (id, name, testament, bible_version)
VALUES(15, "Romans", "New", "New International Version (NIV)");

INSERT INTO bibleverses.chapters (id, chapter_num, book_id)
VALUES(16, 10, 15);

INSERT INTO bibleverses.verses (id, verse_num, text, chapter_id)
VALUES(17, 4, "Christ is the culmination of the law so that there may be righteousness for everyone who believes.", 16);
