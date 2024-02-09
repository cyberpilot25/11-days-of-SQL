SELECT LOWER(CONCAT(firstname,'.',lastname,'@company.com')) AS email
FROM employees
ORDER BY email ASC