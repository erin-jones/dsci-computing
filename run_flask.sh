#!/bin/bash

# Set the path to your Python interpreter
PYTHON_EXECUTABLE=/usr/bin/python3

# Set the path to your Flask application file
FLASK_APP=/home/epj36/dsci-computing/hello.py

# Activate your virtual environment if you are using one
# source /path/to/your/virtualenv/bin/activate

# Run the Flask application
$PYTHON_EXECUTABLE $FLASK_APP
