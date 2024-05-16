run: setup
	Scripts/python gui.py

setup:
	python3 -m venv venv . venv/bin/activate
	Script/pip install -r requirements.t
