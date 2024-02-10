SELECT nickname, MAX(score) as best
FROM Scores
GROUP BY nickname
ORDER BY best DESC;