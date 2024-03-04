from markupsafe import escape
from flask import Flask, redirect, url_for

app = Flask(__name__)

def is_valid_name(name):
    # Check if the name is valid based on your criteria
    return len(name.split()) == 1  # Adjusted for a single-word name

@app.route("/")
def default_route():
    return "This is the data science page"

@app.route("/<name>")
def name_info(name):
    if is_valid_name(name):
        sanitized_name = escape(name)
        return f"<p>{sanitized_name} is the best cloud data scientist.</p>"
    else:
        # Redirect to the default route if the name is not valid
        return redirect(url_for('default_route'))

if __name__ == "__main__":
      app.run(host='0.0.0.0', port=8080, debug=True)


