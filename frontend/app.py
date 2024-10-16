from flask import Flask, render_template
import datetime
import socket

app = Flask(__name__)

@app.route('/')
def home():
    return render_template('index.html', utc_dt=datetime.datetime.now(datetime.timezone.utc), hostname=socket.gethostname())

if __name__ == '__main__':
    app.run(debug=True)