#!/bin/bash

# Capture inputs from GitHub Actions
load_time=$1
deploy_type=$2
QUESTION=$3
INPUT_JSON="{\"messages\": \"$QUESTION\"}"

echo "sending question to the API: $QUESTION"
echo "sending question to the API: $INPUT_JSON"

# Echo the inputs for debugging
echo "🚀 Load Time: $load_time"
echo "⚙️  Deploy Type: $deploy_type"
echo "❓ User Question: $user_question"

# Example: Log the inputs to a file
echo "$(date) | Load Time: $load_time | Deploy Type: $deploy_type | Question: $user_question" >> input_log.txt
