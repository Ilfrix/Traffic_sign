run: setup
	Scripts/python gui.py

setup:
	python -m venv venv . venv/bin/activate
	Script/pip install -r requirements.t
