#!/usr/bin/env bash
# ------------------------------------------------------------------------------------
# UNIX Shell Script to Initialize and Run the k9fnance referral Script by @MeoMunDep
# ------------------------------------------------------------------------------------

cd "$(dirname "$0")"

# Ensure necessary files exist or create them
[ -f proxies.txt ] || { echo "proxies.txt created"; touch proxies.txt; }
[ -f newPrivateKeys.txt ] || { echo "newPrivateKeys.txt created"; touch newPrivateKeys.txt; }
[ -f .env ] || {
  cat <<EOL > .env
MAX_THREADS=10
SLEEP_TIME=2
DEFAULT_WALLETS=100
TIMEOUT=10
REFERRAL_CODES=ABC123,DEF456
SKIP_ERROR_PROXIES=False
EOL
  echo ".env created"
}

pip3 install -r requirements.txt
python3 meomundep.py
