CREATE TABLE role(
   Id_role INT AUTO_INCREMENT,
   label VARCHAR(50),
   PRIMARY KEY(Id_role)
);

CREATE TABLE theme(
   Id_theme INT AUTO_INCREMENT,
   label VARCHAR(50),
   PRIMARY KEY(Id_theme)
);

CREATE TABLE tag(
   Id_tag INT AUTO_INCREMENT,
   label VARCHAR(50),
   PRIMARY KEY(Id_tag)
);

CREATE TABLE account(
   Id_account INT AUTO_INCREMENT,
   login VARCHAR(50),
   password VARCHAR(50),
   PRIMARY KEY(Id_account)
);

CREATE TABLE customer(
   Id_customer INT AUTO_INCREMENT,
   pseudo VARCHAR(50),
   firstname VARCHAR(50),
   lastname VARCHAR(50),
   Id_account INT,
   Id_role INT,
   PRIMARY KEY(Id_customer),
   UNIQUE(Id_account),
   FOREIGN KEY(Id_account) REFERENCES account(Id_account),
   FOREIGN KEY(Id_role) REFERENCES role(Id_role)
);

CREATE TABLE article(
   Id_article INT AUTO_INCREMENT,
   title VARCHAR(50),
   content TEXT,
   Id_customer INT,
   Id_theme INT,
   PRIMARY KEY(Id_article),
   FOREIGN KEY(Id_customer) REFERENCES customer(Id_customer),
   FOREIGN KEY(Id_theme) REFERENCES theme(Id_theme)
);

CREATE TABLE image(
   Id_image INT AUTO_INCREMENT,
   src VARCHAR(50),
   alt VARCHAR(50),
   Id_article INT,
   PRIMARY KEY(Id_image),
   FOREIGN KEY(Id_article) REFERENCES article(Id_article)
);

CREATE TABLE article_tag(
   Id_article INT,
   Id_tag INT,
   PRIMARY KEY(Id_article, Id_tag),
   FOREIGN KEY(Id_article) REFERENCES article(Id_article),
   FOREIGN KEY(Id_tag) REFERENCES tag(Id_tag)
);