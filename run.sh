#!/bin/bash

sudo apt update
sudo apt install curl python3 python3-pip -y
sudo apt-get install python3-flask
flask --version

echo "Testing GET"
curl http://127.0.0.1:5000/get

echo -e "\nTesting POST"
curl -X POST http://127.0.0.1:5000/post \
-H "Content-Type: application/json" \
-d '{"name":"Naveen"}'

echo -e "\nTesting PUT"
curl -X PUT http://127.0.0.1:5000/put/0 \
-H "Content-Type: application/json" \
-d '{"name":"Arun"}'

echo -e "\nTesting DELETE"
curl -X DELETE http://127.0.0.1:5000/delete/0

echo -e "\nDone ✅"
