
run:
	docker compose up --build

down:
	docker compose down

install:
	@find . -type f -name requirements.txt | grep -v venv | while read f; do \
		pip install -r $$f ; \
	done

db:
	PGPASSWORD=12 psql -h 127.0.0.1 -U postgres -d postgres
