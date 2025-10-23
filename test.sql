
/*
SELECT title, COUNT(authors) as numberofauthors
FROM BooksDB.dbo.books
GROUP BY title
HAVING COUNT(authors) > 1;


SELECT 
    title,
    authors,
    LEN(authors) - LEN(REPLACE(authors, ',', '')) +1 AS author_count
FROM books
WHERE LEN(authors) - LEN(REPLACE(authors, ',', '')) > 1;


SELECT title
FROM BooksDB.dbo.books
GROUP BY title
WHERE tag_name IN (SELECT tag_name FROM BooksDB.dbo.tags)


SELECT 
title 
FROM BooksDB.dbo.books 
WHERE best_book_id IN (
    SELECT goodreads_book_id
    FROM BooksDB.dbo.book_tags
    WHERE tag_id = (
        SELECT tag_id 
        FROM tags 
        WHERE tag_name = 'meditation'
    )
);
*/

SELECT books.title, books.orginal_title, books.average_rating
FROM BooksDb.dbo.books
WHERE books.average_rating
