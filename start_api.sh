#!/bin/bash

USE_WAIT_FOR_IT=${USE_WAIT_FOR_IT:-false}

if [ "$USE_WAIT_FOR_IT" == "true" ]; then
  /opt/bin/wait-for-it.sh --timeout=20 "$DB_HOST:$DB_PORT"
fi

uvicorn api:app --host 0.0.0.0 --port 8000