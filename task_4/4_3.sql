-- 3) Необходимо найти среднюю время прохождения каждого уровня, вывести наименование уровня и среднее время прохождения уровня.

SELECT name, AVG(passed_time) as avg_passed_time
FROM game_performance g
left join levels l
    on g.level_id = l.id
GROUP BY level_id
ORDER BY avg_passed_time
