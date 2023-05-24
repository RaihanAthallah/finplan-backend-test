

-- SOAL NOMOR 2
SELECT users.gender as gender, COUNT(map_user_hobby.id) as total
FROM users,map_user_hobby,hobbies
WHERE users.id = map_user_hobby.id_user AND hobbies.id = map_user_hobby.id_hobby AND map_user_hobby.status = "active" AND hobbies.name = "Skipping"
GROUP BY users.gender
ORDER BY total DESC;

-- SOAL NOMOR 3
SELECT users.name as name_user, COUNT(id_hobby) as total
FROM map_user_hobby,users
WHERE users.id = map_user_hobby.id_user AND map_user_hobby.status = "active"
GROUP BY map_user_hobby.id_user;

-- SOAL NOMOR 4
SELECT users.name as name, AVG(hobbies.level)
FROM map_user_hobby,users,hobbies
WHERE(SELECT COUNT(map_user_hobby.id_user) FROM map_user_hobby) > 1 AND users.id = map_user_hobby.id_user AND hobbies.id = map_user_hobby.id_hobby
GROUP BY map_user_hobby.id_user;