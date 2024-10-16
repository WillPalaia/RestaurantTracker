CREATE TABLE PEOPLE (
  pId INTEGER PRIMARY KEY,
  fname TEXT NOT NULL,
  lname TEXT NOT NULL,
  username TEXT NOT NULL,
  password TEXT NOT NULL
);

CREATE TABLE FAVORITE_FOOD (
  pid INTEGER,
  food TEXT NOT NULL,
  FOREIGN KEY (pid) REFERENCES PEOPLE(pId)
);

INSERT INTO PEOPLE VALUES (0001, 'Will', 'Palaia', 'willpalaia', 'dog123');
INSERT INTO PEOPLE VALUES (0002, 'Scott', 'Smith', 'SSmith', 'password');
INSERT INTO PEOPLE VALUES (0003, 'Ava', 'Jones', 'AJ1', 'AJ1');

INSERT INTO FAVORITE_FOOD VALUES (0001, 'food');
INSERT INTO FAVORITE_FOOD VALUES (0003, 'taco');