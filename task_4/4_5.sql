-- 5) Необходимо найти уникальные имена игроков, у которых менялась страна*

-- На тестовом задании делал через join по id двух одинаковых таблиц и
-- фильтровал значения, где country не совдадали
-- Здесь через GROUP BY и HAVING идея пришла сделать

SELECT DISTINCT name
FROM users
GROUP BY id
HAVING COUNT(DISTINCT country) > 1
ORDER BY id