from flask import Flask, render_template, request, redirect, url_for  # Import necessary Flask modules

app = Flask(__name__)  # Create a Flask application instance

# Define a route for the home page
@app.route('/', methods=["GET","POST"])
def index():
    return render_template('index.html')  # Render the index.html template

# Define a route to store money
@app.route('/store_money', methods=["GET","POST"])
def store_money():
    # Here, you would typically handle the logic for storing money
    # This could involve interacting with a blockchain, database, or another backend service
    return render_template('store_money.html')  # Render the store_money.html template

# Define a route to transfer money
@app.route('/transfer_money', methods=["GET","POST"])
def transfer_money():
    # Here, you would typically handle the logic for transferring money
    # This could involve sending data to a blockchain or processing a transaction
    return render_template('transfer_money.html')  # Render the transfer_money.html template

# Define a route to coconut vending machine
@app.route('/coconut', methods=["GET","POST"])
def coconut():
    # Here, you would typically handle the logic for coconut vending machine
    # This could involve interacting with a blockchain, database, or another backend service
    return render_template('coconut.html')  # Render the coconut.html template

if __name__=='__main__':
    # start the Flask server to run the program
    app.run()
