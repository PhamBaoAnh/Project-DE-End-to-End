
to_mysql_root:
	docker exec -it de_mysql mysql -u"root" -p"${MYSQL_ROOT_PASSWORD}" ${MYSQL_DATABASE}
	docker exec -it mysql mysql -u"root" -p"${admin}" ${globalsuperstore}   

mysql_create: # create table
	docker exec -it mysql mysql --local_infile=1 -uroot -padmin globalSuperstore -e "source /tmp/load_data/globalsuperstore.sql"

	
mysql_load:
	docker exec -it de_mysql mysql --local_infile -u"${MYSQL_USER}" -p"${MYSQL_PASSWORD}" ${MYSQL_DATABASE} -e"source /tmp/load_dataset/mysql_load.sql"

	docker exec -it mysql mysql --local_infile -u"${adminadmin}" -p"${admi}" ${} -e"source /tmp/load_dataset/mysql_load.sql"
    docker exec -it mysql mysql -uroot -p
    SET GLOBAL local_infile = 1;
	docker exec -it mysql mysql --local-infile=1 -uroot -padmin globalSuperstore -e "source /tmp/load_data/load_data.sql"


note: docker compose down -v  : tắt toàn bộ các container và xóa cả volumes


   docker exec -it globalsuperstore-postgres-1 psql -U airflow -c "CREATE DATABASE globalsuperstore;"
   docker cp C:\Users\msi\Desktop\GlobalSuperstore\schema\schema.sql de_psql:/tmp/schema.sql
   docker exec -i de_psql psql -U admin -d globalsuperstore -f /tmp/schema.sql