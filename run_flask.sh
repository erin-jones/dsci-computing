#!/bin/bash

# Set the path to your Python interpreter
PYTHON_EXECUTABLE=/usr/bin/python3

# Set the path to your Flask application file
export FLASK_APP=/home/epj36/dsci-computing/hello.py

# Activate your virtual environment if you are using one
# source /path/to/your/virtualenv/bin/activate

# Optionally, set the Flask environment to development to enable debug mode
export FLASK_ENV=development

# Run the Flask application using the Flask CLI
$PYTHON_EXECUTABLE -m flask run
