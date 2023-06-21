from flask import Flask

app = Flask(__name__)   #initiliaze flask application, name mean the module

@app.route('/') # call route, decorator.
def main():
    return"Girlcode store API"
