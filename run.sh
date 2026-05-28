#!/bin/bash



echo "============GET Output=============="
curl http://127.0.0.1:5000/get

echo -e "\n===============POST Output==============="
curl -X POST http://127.0.0.1:5000/post \
-H "Content-Type: application/json" \
-d '{"name":"Naveen"}'

echo -e "\n===============PUT Output=================="
curl -X PUT http://127.0.0.1:5000/put/0 \
-H "Content-Type: application/json" \
-d '{"name":"Arun"}'

echo -e "\n=================DELETE Output==================="
curl -X DELETE http://127.0.0.1:5000/delete/0

echo -e "\nDone ✅"
