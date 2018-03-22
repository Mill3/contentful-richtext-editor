# Uncomment the lines below after adding your data
# export SPACE=<id of space where you want to install this extension>

serve:
	python server.py

update: extension.json
	contentful extension update --space-id $(SPACE)

update-local: extension.json
	contentful extension update --space-id $(SPACE) --force --src https://localhost:4443

update-force: extension.json
	contentful extension update --space-id $(SPACE) --force

create: extension.json
	contentful extension create --space-id $(SPACE)

delete:
	contentful extension delete --space-id $(SPACE) --id alloy
