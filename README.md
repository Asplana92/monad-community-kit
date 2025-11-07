# 🧰 Monad Community Kit

A complete open-source toolkit for running, monitoring, and maintaining **Monad nodes** in devnet and testnet environments.  
Built and maintained as part of the **Monad Path to Rank S** initiatives by [@02Tolik02](https://x.com/02Tolik02).

---

## 🚀 Quick Start

```bash
git clone https://github.com/Asplana92/monad-community-kit
cd monad-community-kit
cp .env.example .env
docker compose -f quickstart/docker-compose.yml up -d

Once started:

Grafana: http://localhost:3000

Prometheus: http://localhost:9090

Node Health: via scripts/monad-health.sh

📦 Structure

monad-community-kit/
├── dashboards/
│   ├── monad-grafana.json
│   └── monitoring/
│       ├── prometheus.yml
│       └── alert_rules.yml
├── quickstart/
│   └── docs/setup_guide.md
├── scripts/
│   └── monad-health.sh
├── .env.example
├── .gitignore
├── LICENSE
├── CONTRIBUTING.md
└── README.md


⚙️ Features

Prebuilt Prometheus + Grafana monitoring stack

Ready alert rules for Node & RPC uptime

Automated health script for quick diagnostics

Clean .env and .gitignore for easy reuse

MIT license, open for contributions

🧠 Maintainer

Built by @02Tolik02
 — Web3 Infra & Testnet Explorer
Part of the Web3 Journey Repository

🪄 License

MIT License
 © 2025 Asplana92
Feel free to fork, improve, and contribute.
