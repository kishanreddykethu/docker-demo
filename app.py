from flask import Flask, request
import os

app = Flask(__name__)


@app.route('/hello')
def api_hello():
    env = os.environ.get("env", "prod")
    name = request.args.get("name", "John Doe")

    return f"Hello {name} from '{env}'"


if __name__ == '__main__':
    app.run()
