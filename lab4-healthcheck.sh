#!/usr/bin/env bash
set -euo pipefail
HTTP_CODE=$(curl -s -o /dev/null -w "%{http_code}" http://127.0.0.1:8000/)

if [ "$HTTP_CODE" -eq 200 ]; then
    echo "OK: Service is UP (HTTP 200)"
    exit 0
else
    echo "FAIL: Service is DOWN or returned HTTP $HTTP_CODE"
    exit 1
fi
