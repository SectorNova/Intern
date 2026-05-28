from flask import Flask, request
app = Flask(__name__)

data = []
#get
@app.route('/get')
def get():
    return {"data": data}
#post
@app.route('/post', methods=['POST'])
def post():
    data.append(request.json['name'])
    return {"msg": "added"}
#put
@app.route('/put/<int:i>', methods=['PUT'])
def put(i):
    data[i] = request.json['name']
    return {"msg": "updated"}
#delete
@app.route('/delete/<int:i>', methods=['DELETE'])
def delete(i):
    data.pop(i)
    return {"msg": "deleted"}


app.run()
