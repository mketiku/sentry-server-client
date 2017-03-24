rm-dir:
	rm -rf ./sentry_server/db.sqlite3
	rm -rf ./sentry_client_one/db.sqlite3
	rm -rf ./sentry_client_two/db.sqlite3

migrate-dir:
	python ./sentry_server/manage.py migrate
	python ./sentry_client_one/manage.py migrate
	python ./sentry_client_two/manage.py migrate

clean-dir: rm-dir migrate-dir
