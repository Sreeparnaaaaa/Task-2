CREATE DATABASE LibraryDB;
USE LibraryDB;
DROP DATABASE LibraryDB;
CREATE TABLE Author (
    AuthorID INT AUTO_INCREMENT PRIMARY KEY,
    AuthorName VARCHAR(100) NOT NULL
);

CREATE TABLE Book (
    BookID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    ISBN VARCHAR(50) UNIQUE,
    PublishedYear YEAR
);

CREATE TABLE Book_Author (
    BookID INT,
    AuthorID INT,
    PRIMARY KEY (BookID, AuthorID),
    FOREIGN KEY (BookID) REFERENCES Book(BookID) ON DELETE CASCADE,
    FOREIGN KEY (AuthorID) REFERENCES Author(AuthorID) ON DELETE CASCADE
);

CREATE TABLE Member (
    MemberID INT AUTO_INCREMENT PRIMARY KEY,
    MemberName VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE
);

CREATE TABLE Loan (
    LoanID INT AUTO_INCREMENT PRIMARY KEY,
    BookID INT,
    MemberID INT,
    LoanDate DATE,
    ReturnDate DATE,
    FOREIGN KEY (BookID) REFERENCES Book(BookID) ON DELETE CASCADE,
    FOREIGN KEY (MemberID) REFERENCES Member(MemberID) ON DELETE CASCADE
);

INSERT INTO Author (AuthorName) VALUES ('J.K. Rowling'); -- ID = 1
INSERT INTO Author (AuthorName) VALUES ('George Orwell'); -- ID = 2
INSERT INTO Author (AuthorName) VALUES ('Jane Austen'); -- ID = 3

INSERT INTO Book (Title, ISBN, PublishedYear) VALUES ('Harry Potter', '12345670', 97); 
INSERT INTO Book (Title, ISBN, PublishedYear) VALUES ('1984', '09876321', 49); -- ID = 2
INSERT INTO Book (Title, ISBN, PublishedYear) VALUES ('Pride', '11334455', 13); -- ID = 3

-- Insert Members
INSERT INTO Member (MemberName, Email) VALUES ('John Doe', 'john@example.com'); -- ID = 1
INSERT INTO Member (MemberName, Email) VALUES ('Alice Smith', NULL); -- ID = 2

-- Insert into Book_Author (IDs must exist)
INSERT INTO Book_Author (BookID, AuthorID) VALUES (1, 1); -- Harry Potter by J.K. Rowling
INSERT INTO Book_Author (BookID, AuthorID) VALUES (2, 2); -- 1984 by George Orwell
INSERT INTO Book_Author (BookID, AuthorID) VALUES (3, 3); -- Pride and Prejudice by Jane Austen

-- Insert Loans
INSERT INTO Loan (BookID, MemberID, LoanDate, ReturnDate) VALUES (1, 1, '2025-06-29', NULL);
INSERT INTO Loan (BookID, MemberID, LoanDate, ReturnDate) VALUES (2, 2, '2025-06-29', '2025-07-05');



UPDATE Member SET Email = 'alice@example.com' WHERE Email IS NULL;


DELETE FROM Book WHERE PublishedYear IS NULL;
