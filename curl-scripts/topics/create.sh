#!/bin/bash

API="http://localhost:4741"
URL_PATH="/topics"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Bearer ${TOKEN}" \
  --data '{
    "topic": {
      "username": "'"${USERNAME}"'",
      "topic": "'"${TOPIC}"'",
      "comment": "'"${COMMENT}"'"
    }
  }'

echo
