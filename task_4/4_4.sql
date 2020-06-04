-- 4) Необходимо найти минимальное время прохождения игроков из Германии (DE) на уровне, который называется Magic_Quest_12

-- тут интересно узнать, лучше склеить а потом фильтровать
-- или лучше через несколько SELECT отфильтровать значения склеивать
-- будет ли какой-то способ быстрее / оптимальнее?
-- этот вариант просто более читабельный

SELECT min(g.passed_time) as min_passed_time
FROM game_performance g
    left join levels l
        on g.level_id = l.id
    left join users u
        on g.user_id = u.id
WHERE l.name = 'Magic_Quest_12' and
      u.country = 'DE'