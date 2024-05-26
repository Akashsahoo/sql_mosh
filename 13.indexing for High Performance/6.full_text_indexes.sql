USE sql_blob;
SELECT *
FROM posts
WHERE title LIKE '%react redux%' OR
body LIKE '%react redux%';
 

-- best way making full test minde

CREATE FULLTEXT INDEX idx_title_body ON posts (title,body) ;


SELECT * FROM posts
WHERE MATCH(title,body) AGAINST ('react redux');

-- MATCH(title,body) AGAINST ('react redux') give relevance score

SELECT *,MATCH(title,body) AGAINST ('react redux')
 FROM posts
WHERE MATCH(title,body) AGAINST ('react redux');

-- in boolean mode
-- posts have react but not redux but have form
SELECT *,MATCH(title,body) AGAINST ('react redux')
 FROM posts
WHERE MATCH(title,body) AGAINST ('react -redux +form' IN BOOLEAN MODE);

-- exact words posts have
SELECT *,MATCH(title,body) AGAINST ('react redux')
 FROM posts
WHERE MATCH(title,body) AGAINST ('handling a form' IN BOOLEAN MODE);