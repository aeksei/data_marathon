-- 2) Необходимо найти среднее время прохождения уровня игроков из Cоединенных Штатов (US)

SELECT AVG(g.passed_time) as avg_passed_time
FROM game_performance as g
left join users u
    on g.user_id = u.id
WHERE u.country = 'US'