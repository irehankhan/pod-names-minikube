from flask import Flask
import socket

app = Flask(__name__)

@app.route('/')
def hello():
    pod_name = socket.gethostname()
    return f'Hello from pod : {pod_name}'

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=5000)