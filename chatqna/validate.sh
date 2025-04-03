# Exit immediately if a command exits with a non-zero status.
set -e


time_limit=$1
if [ "$1" == "" ]; then
    time_limit=1000
fi

# Inputs from GitHub Actions
QUESTION="$3"           # Question passed from GitHub Actions

# Prepare the input JSON
INPUT_JSON="{\"messages\": \"$QUESTION\"}"

# Query the API
echo "Sending question to ChatQnA: $QUESTION"
HTTP_RESPONSE=$(curl --silent --write-out "HTTPSTATUS:%{http_code}" -X POST -d "$INPUT_JSON" -H 'Content-Type: application/json' "$URL")

# Extract HTTP status and response body
HTTP_STATUS=$(echo "$HTTP_RESPONSE" | tr -d '\n' | sed -e 's/.*HTTPSTATUS://')
RESPONSE_BODY=$(echo "$HTTP_RESPONSE" | sed -e 's/HTTPSTATUS\:.*//g')

# Log the results
echo "[Question] $QUESTION" >> "Question.log"
echo "[Answer] $RESPONSE_BODY" >> "response.log"
docker logs "$DOCKER_NAME" >> "chatqna-megaservice.log"

# Check for successful response
if [ "$HTTP_STATUS" -ne "200" ]; then
    echo "API returned HTTP status $HTTP_STATUS"
    exit 1
else
    echo "API responded successfully."
    echo "Answer: $RESPONSE_BODY"
fi
