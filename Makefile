PORT ?= 8000

install:
	poetry install

build:
	poetry build

lint:
	poetry run flake8 page_analyzer

dev:
	poetry run flask --app page_analyzer:app run --port $(PORT)

start:
	poetry run gunicorn -w 5 -b 0.0.0.0:$(PORT) page_analyzer:app