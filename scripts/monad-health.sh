#!/bin/bash
# Monad Node Health Check Script
# Checks if RPC is responding correctly

RPC_URL="http://127.0.0.1:8080"

response=$(curl -s -X POST -H "Content-Type: application/json" \
  --data '{"jsonrpc":"2.0","method":"eth_blockNumber","params":[],"id":1}' \
  $RPC_URL)

if echo "$response" | grep -q "result"; then
  echo "✅ OK: RPC alive"
else
  echo "❌ Error: RPC not responding"
fi
