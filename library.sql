CREATE TABLE `Books` (
	`id`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`title`	TEXT NOT NULL,
	`image`	TEXT NOT NULL,
  `price` FLOAT NOT NULL,
  `sale` BOOLEAN NOT NULL,
  `description` TEXT NOT NULL
);

INSERT INTO `Books` VALUES (null, 'A Promised Land', 'https://images-na.ssl-images-amazon.com/images/I/91+NBrXG-PL.jpg', 24.99, false, '');
INSERT INTO `Books` VALUES (null, 'Children of Blood and Bone', 'https://images-na.ssl-images-amazon.com/images/I/A1agLFsWkOL.jpg', 12.99, true, '');
INSERT INTO `Books` VALUES (null, 'A Peoples History of the United States of America', 'https://images-na.ssl-images-amazon.com/images/I/51529Lfc2ML.jpg', 30.00, false, '');
INSERT INTO `Books` VALUES (null, 'Concrete Rose', 'https://images-na.ssl-images-amazon.com/images/I/81rRRmZZvZL.jpg', 15.89, false, '');
INSERT INTO `Books` VALUES (null, 'The Underground Railroad', 'https://images-na.ssl-images-amazon.com/images/I/A1Cu4ywUeyL.jpg', 25.00, true, '');
INSERT INTO `Books` VALUES (null, 'Hood Feminism', 'https://res.cloudinary.com/bloomsbury-atlas/image/upload/w_360,c_scale/jackets/9781526622402.jpg', 12.99, true, '');
INSERT INTO `Books` VALUES (null, 'A Blade So Black', 'https://images-na.ssl-images-amazon.com/images/I/81Uf1dTjfQL.jpg', 15.00, false, '');
INSERT INTO `Books` VALUES (null, 'A Dream So Dark', 'https://m.media-amazon.com/images/I/51BZdlchEsL.jpg', 14.99, false, '');
INSERT INTO `Books` VALUES (null, 'The Fire Next Time', 'https://images-na.ssl-images-amazon.com/images/I/61GSqXVhhKL.jpg', 12.00, false, '');
INSERT INTO `Books` VALUES (null, 'The Light We Carry', 'https://m.media-amazon.com/images/I/41HcM1yzHcL._AC_SY780_.jpg', 35.99, false, '');

CREATE TABLE `Authors` (
	`id`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`email`	TEXT NOT NULL,
	`first_name`	TEXT NOT NULL,
  `last_name` TEXT NOT NULL,
  `image` TEXT NOT NULL,
  `favorite` BOOL NOT NULL
);

INSERT INTO `Authors` VALUES (null, 'ta@ta.com', 'Tomi', 'Adeyemi', 'https://upload.wikimedia.org/wikipedia/commons/1/17/Tomi_Adeyemi_2020.JPG', true);
INSERT INTO `Authors` VALUES (null, 'ba@obama.com', 'Barack', 'Obama', 'https://upload.wikimedia.org/wikipedia/commons/8/8d/President_Barack_Obama.jpg', true);
INSERT INTO `Authors` VALUES (null, 'hz@zinn.com', 'Howard', 'Zinn', 'https://upload.wikimedia.org/wikipedia/commons/e/ef/Howard_Zinn%2C_2009_%28cropped%29.jpg', false);
INSERT INTO `Authors` VALUES (null, 'at@thomas.com', 'Angie', 'Thomas', 'https://upload.wikimedia.org/wikipedia/commons/a/a1/Angie_thomas_9022008.jpg', false);
INSERT INTO `Authors` VALUES (null, 'cw@whithead.com', 'Colson', 'Whitehead', 'https://upload.wikimedia.org/wikipedia/commons/5/5c/Colson_Whitehead_BBF_2011_Shankbone.JPG', false);
INSERT INTO `Authors` VALUES (null, 'mk@kendall.com', 'Mikki', 'Kendall', 'https://upload.wikimedia.org/wikipedia/commons/1/17/Author%2C_activist%2C_and_cultural_critic_Mikki_Kendall.jpg', true);
INSERT INTO `Authors` VALUES (null, 'lm@lm.com', 'L.L.', 'McKinney', 'https://mpd-biblio-authors.imgix.net/200066919.jpg?fit=crop&crop=faces&w=870&h=870', true);
INSERT INTO `Authors` VALUES (null, 'jb@baldwin.com', 'James', 'Baldwin', 'https://upload.wikimedia.org/wikipedia/commons/3/37/James_Baldwin_33_Allan_Warren.jpg', false);
INSERT INTO `Authors` VALUES (null, 'momo@me.com', 'Michelle', 'Obama', 'https://media-cldnry.s-nbcnews.com/image/upload/rockcms/2022-11/michelle-obama-menopause-weight-gain-zz-221110-02-05b2c3.jpg', true);

CREATE TABLE `Author_Books` (
  `id` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  `author_id` INTEGER NOT NULL,
  `book_id` INTEGER NOT NULL
);

INSERT INTO `Author_Books` VALUES (null, 1, 2);
INSERT INTO `Author_Books` VALUES (null, 2, 1);
INSERT INTO `Author_Books` VALUES (null, 3, 3);
INSERT INTO `Author_Books` VALUES (null, 4, 4);
INSERT INTO `Author_Books` VALUES (null, 5, 5);
INSERT INTO `Author_Books` VALUES (null, 6, 6);
INSERT INTO `Author_Books` VALUES (null, 7, 7);
INSERT INTO `Author_Books` VALUES (null, 8, 7);
INSERT INTO `Author_Books` VALUES (null, 9, 8);
INSERT INTO `Author_Books` VALUES (null, 10, 9);

SELECT
    c.id,
    c.author_id,
    c.book_id,
    b.id book_book_id,
    b.title	book_title,
	  b.image	book_image,
    b.price book_price,
    b.sale book_sale,
    b.description book_description,
	  a.id author_author_id,
	  a.email author_email,
	  a.first_name author_first_name,
    a.last_name author_last_name,
    a.image author_image,
    a.favorite author_favorite
FROM Author_Books c
JOIN Books b
    ON b.id = c.book_id
JOIN Authors a
    ON a.id = c.author_id
