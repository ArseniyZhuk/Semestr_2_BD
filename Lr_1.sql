CREATE DATABASE bookshop ;
CREATE TABLE IF NOT EXISTS bookshop.books(
    id INT(10) PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(50),
    genre VARCHAR(30),
    author VARCHAR(30),
    price DECIMAL(8, 2),
    amount INT
);
INSERT INTO bookshop.books(title, genre, author, price, amount)
VALUES
('Три товарища', 'Роман', 'Эрих Мария Ремарк', 269, 5),
('Финансист', 'Роман', 'Теодор Драйзер', 310, 7);

SELECT title, genre, author, price, amount FROM bookshop.books;

SELECT *, (price * amount) AS Стоимость FROM bookshop.books;

DROP DATABASE bookshop;