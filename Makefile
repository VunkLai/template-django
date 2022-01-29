all:
	pipenv lock -r > requirements.txt

linting:
	# stage: analysis
	pylint --django-settings-module=server server/*

static-analysis:
	# stage: analysis
	bandit -r server
