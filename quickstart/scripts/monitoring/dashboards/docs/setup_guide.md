# Setup Guide

## Quick start

```bash
git clone https://github.com/Asplana92/monad-community-kit
cd monad-community-kit/quickstart
docker compose up -d


Health check

To verify that your node RPC is alive, run: bash ../scripts/monad-health.sh

If you see OK: RPC alive, everything is working fine.

Grafana

Open http://localhost:3000
 in your browser,
then import the dashboard file: dashboards/monad-grafana.json

This dashboard will display basic node health and metrics.
