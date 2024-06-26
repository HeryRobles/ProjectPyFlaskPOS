#Para activar el ambinte usamos: > venv\Scripts\activate
# Para arrancar el proyecto se usa: flask --app hello run --debug


from flask import Flask, render_template, request
import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="",
    database="pos"
)

app = Flask(__name__)

@app.route('/')
def hello_world():
    #return 'Hello, World!'
    return render_template("index.html")



@app.route('/submit', methods=['POST'])
def submit():
       # Conexión a la base de datos
    mycursor = mydb.cursor()
    

    # Obtener datos de la base de datos
    mycursor.execute('SELECT * FROM productos')
    productos = mycursor.fetchall()
    print(productos)
    # Cerrar la conexión
    mycursor.close()
    print("Todo bien")
    return render_template("catalogoproductos.html", productos=productos)



if __name__ == '_main':
    app.run()

