#!/usr/bin/env bash
set -euo pipefail
RPC="${RPC:-http://localhost:8545}"
if curl -s --max-time 3 -X POST -H "Content-Type: application/json" \
  --data '{"jsonrpc":"2.0","method":"web3_clientVersion","params":[],"id":1}' "$RPC" \
  | grep -qi "result"; then
  echo "OK: RPC alive"
  exit 0
else
  echo "ERR: RPC not responding" >&2
  exit 1
fi
