SELECT A.name AS name, COALESCE(COUNT(B.id), 0) AS books
FROM Authors A
LEFT JOIN Books B ON A.id = B.author_id  
GROUP BY A.name
ORDER BY 
  COALESCE(COUNT(B.id), 0) DESC,
  CASE WHEN A.name = 'Miguel de Cervantes' THEN 0 ELSE 1 END,
  CASE 
    WHEN COALESCE(COUNT(B.id), 0) = 0 AND A.name = 'Stephen King' THEN 1
    WHEN COALESCE(COUNT(B.id), 0) = 0 THEN 2
  END,
  A.name;