from flask import Flask,render_template
from flask_mysqldb import MySQL
from json import dumps

app = Flask(__name__)
 
app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = ''
app.config['MYSQL_DB'] = 'clip'
 
mysql = MySQL(app)

@app.route('/api/pet/<name>')
def select(name):

    cursor = mysql.connection.cursor()

    query_string = "SELECT * FROM pet WHERE name = %s"
    cursor.execute(query_string, (name,))

    data = cursor.fetchall()

    return dumps(data), 200

if __name__ == "__main__":
    app.run(debug=True)


