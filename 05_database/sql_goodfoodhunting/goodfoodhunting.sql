CREATE DATABASE goodfoodhunting;

CREATE TABLE dishes (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(200),
  image_url VARCHAR(400)
);

SELECT name, image_url FROM dishes;
SELECT name FROM dishes;
SELECT * FROM dishes;
SELECT name FROM dishes WHERE id = 1;

INSERT INTO dishes (name, image_url) VALUES ('pudding', 'https://www.justonecookbook.com/wp-content/uploads/2016/09/Japanese-Pudding-II-600x900.jpg');
INSERT INTO dishes (name, image_url) VALUES ('chicken beef','https://storify.com/services/proxy/2/OgMkL7kOnnFXWGpH1KcS6Q/http/imgur.com/wSVZY.jpg');


-- DELETE FROM dishes WHERE id = 2;

CREATE TABLE comments (
  id SERIAL4 PRIMARY KEY,
  content VARCHAR(400) NOT NULL,
  dish_id INTEGER NOT NULL,
  FOREIGN KEY (dish_id) REFERENCES dishes (id) ON DELETE CASCADE
);