# 🚀 Monad Community Kit — Quickstart Guide

A ready-to-use toolkit for running and monitoring Monad nodes with Prometheus, Grafana, and automated health checks.  
Built as part of the **Monad Path to Rank S** initiative 🛠️

---

## 🧩 1️⃣ Clone Repository

```bash
git clone https://github.com/Asplana92/monad-community-kit.git
cd monad-community-kit

⚙️ 2️⃣ Configure Environment

Copy the example file and adjust variables as needed:
cp .env.example .env
Edit .env to match your setup — example:
MONAD_RPC_URL=http://127.0.0.1:8080
PROMETHEUS_PORT=9090
GRAFANA_PORT=3000
ALERT_INTERVAL=2m

🐳 3️⃣ Start the Stack

Launch all containers:
docker compose -f quickstart/docs/docker-compose.yml up -d
or if you moved the file to root:
docker compose up -d
✅ Components:

Monad Node / RPC — main blockchain node

Prometheus — metrics collector

Grafana — visualization dashboard

Health Script — auto-checks uptime and RPC responses

🩺 4️⃣ Verify Health

Run quick health check:
bash scripts/monad-health.sh
Expected output:
✔ Monad RPC is responding (HTTP 200)
✔ Node Exporter metrics available
✔ Prometheus targets are UP

📊 5️⃣ Access Dashboards

Grafana: http://localhost:3000

Prometheus: http://localhost:9090

Default Grafana credentials:
user: admin
pass: admin
Once inside Grafana, import dashboards/monad-grafana.json.

🔔 6️⃣ Alerts (Optional)

Prometheus uses monitoring/alert_rules.yml.
Edit rules or connect Alertmanager with Discord webhook for notifications.

🧹 7️⃣ Stop & Clean Up
docker compose down
For a full reset:
docker system prune -a

🧠 Maintainer

Built and maintained by @02Tolik02

Part of Web3-Journey Repository

🪄 License

Released under MIT License

🧰 “One command to monitor your Monad node — from zero to Grafana.”

