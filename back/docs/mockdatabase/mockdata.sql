INSERT INTO role (label) VALUES ('Admin');
INSERT INTO role (label) VALUES ('Editor');
INSERT INTO role (label) VALUES ('Contributor');

INSERT INTO theme (label) VALUES ('Technology');
INSERT INTO theme (label) VALUES ('Travel');
INSERT INTO theme (label) VALUES ('Food');
INSERT INTO theme (label) VALUES ('Fashion');

INSERT INTO tag (label) VALUES ('Programming');
INSERT INTO tag (label) VALUES ('Gadgets');
INSERT INTO tag (label) VALUES ('Asia');
INSERT INTO tag (label) VALUES ('Europe');
INSERT INTO tag (label) VALUES ('Italian');
INSERT INTO tag (label) VALUES ('Thai');

INSERT INTO account (login, password) VALUES ('johndoe', 'password123');
INSERT INTO account (login, password) VALUES ('janedoe', 'letmein');
INSERT INTO account (login, password) VALUES ('bobsmith', 'changeme');

INSERT INTO customer (pseudo, firstname, lastname, Id_account, Id_role) 
VALUES ('johnd', 'John', 'Doe', 1, 1);
INSERT INTO customer (pseudo, firstname, lastname, Id_account, Id_role) 
VALUES ('janed', 'Jane', 'Doe', 2, 2);
INSERT INTO customer (pseudo, firstname, lastname, Id_account, Id_role) 
VALUES ('bob', 'Bob', 'Smith', 3, 3);

INSERT INTO article (title, content, Id_customer, Id_theme) 
VALUES ('The latest iPhone model', 'Apple just announced the latest iPhone model with a lot of new features.', 1, 1);
INSERT INTO article (title, content, Id_customer, Id_theme) 
VALUES ('A trip to Thailand', 'I recently visited Thailand and it was an amazing experience. Here are some of the highlights!', 2, 2);
INSERT INTO article (title, content, Id_customer, Id_theme) 
VALUES ('My favorite pizza places in New York City', 'As a pizza lover, I have tried many pizza places in NYC. Here are my top picks!', 3, 3);

INSERT INTO image (src, alt, Id_article) 
VALUES ('https://example.com/iphone.jpg', 'The latest iPhone model', 1);
INSERT INTO image (src, alt, Id_article) 
VALUES ('https://example.com/thailand.jpg', 'A trip to Thailand', 2);
INSERT INTO image (src, alt, Id_article) 
VALUES ('https://example.com/pizza.jpg', 'My favorite pizza places in New York City', 3);

INSERT INTO article_tag (Id_article, Id_tag) VALUES (1, 1);
INSERT INTO article_tag (Id_article, Id_tag) VALUES (1, 2);
INSERT INTO article_tag (Id_article, Id_tag) VALUES (2, 3);
INSERT INTO article_tag (Id_article, Id_tag) VALUES (2, 4);
INSERT INTO article_tag (Id_article, Id_tag) VALUES (3, 5);
INSERT INTO article_tag (Id_article, Id_tag) VALUES (3, 6);
