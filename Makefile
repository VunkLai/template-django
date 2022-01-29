all:
	pipenv lock -r > requirements.txt

linting:
	# stage: analyze
	pylint --django-settings-module=server server/*

