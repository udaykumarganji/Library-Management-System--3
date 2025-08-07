
-- 1. Select all columns from Books
SELECT * FROM Books;

-- 2. Select specific columns
SELECT Title, PublishedYear FROM Books;

-- 3. Filter books published after 1950
SELECT * FROM Books WHERE PublishedYear > 1950;

-- 4. Filter books in the 'Fiction' category
SELECT Books.Title
FROM Books
JOIN Categories ON Books.CategoryID = Categories.CategoryID
WHERE Categories.CategoryName = 'Fiction';

-- 5. Use LIKE to find books containing 'Harry'
SELECT * FROM Books WHERE Title LIKE '%Harry%';

-- 6. Use BETWEEN to get books published between 1930 and 2000
SELECT * FROM Books WHERE PublishedYear BETWEEN 1930 AND 2000;

-- 7. Use ORDER BY to sort books by PublishedYear descending
SELECT * FROM Books ORDER BY PublishedYear DESC;

-- 8. Limit to top 2 newest books
SELECT * FROM Books ORDER BY PublishedYear DESC LIMIT 2;

-- 9. Use aliasing
SELECT Title AS BookTitle, PublishedYear AS Year FROM Books;

-- 10. Use DISTINCT to get unique categories
SELECT DISTINCT CategoryID FROM Books;
