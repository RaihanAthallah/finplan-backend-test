CREATE INDEX index_table_map_user_hobby
ON map_user_hobby(id_user, id_hobby) USING BTREE;