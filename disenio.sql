CREATE TABLE User (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    registration_date DATE NOT NULL,
    address VARCHAR(255)
);

CREATE TABLE Book (
    ISBN BIGINT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author_id INT,
    publisher VARCHAR(100),
    publication_year INT,
    user_id INT,
    FOREIGN KEY (author_id) REFERENCES Author(ID),
    FOREIGN KEY (user_id) REFERENCES User(ID)
);

CREATE TABLE Review (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    book_ISBN BIGINT,
    content TEXT NOT NULL,
    creation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (book_ISBN) REFERENCES Book(ISBN)
);

CREATE TABLE Author (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    nationality VARCHAR(50),
    birth_date DATE,
    death_date DATE,
    biography TEXT
);

CREATE TABLE Category (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    description TEXT
);

CREATE TABLE Book_Category (
    book_ISBN BIGINT,
    category_id INT,
    PRIMARY KEY (book_ISBN, category_id),
    FOREIGN KEY (book_ISBN) REFERENCES Book(ISBN),
    FOREIGN KEY (category_id) REFERENCES Category(ID)
);
