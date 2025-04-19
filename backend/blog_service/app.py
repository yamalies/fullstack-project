from flask import Flask, render_template, request, redirect
import pymysql
import os

app = Flask(__name__)

def get_db_connection():
    return pymysql.connect(
        host=os.getenv('DB_HOST'),
        user=os.getenv('DB_USER'),
        password=os.getenv('DB_PASSWORD'),
        database=os.getenv('DB_NAME'),
        cursorclass=pymysql.cursors.DictCursor
    )

@app.route('/', methods=['GET', 'POST'])
def index():
    conn = get_db_connection()
    cursor = conn.cursor()
    if request.method == 'POST':
        title = request.form['title']
        content = request.form['content']
        cursor.execute('INSERT INTO blogs (title, content) VALUES (%s, %s)', (title, content))
        conn.commit()
        return redirect('/')

    cursor.execute('SELECT * FROM blogs ORDER BY published_at DESC')
    posts = cursor.fetchall()
    conn.close()
    return render_template('index.html', posts=posts)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5001, debug=False)