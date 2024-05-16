run: setup
	Scripts/python gui.py

setup:
	python -m venv venv . venv/bin/activate
	Scripts/pip install -r requirements.txt
