@echo off
REM ------------------------------------------------------------------------------------
REM Windows Batch Script to Initialize and Run the k9finance referral Script
REM ------------------------------------------------------------------------------------

cd /d "%~dp0"

REM Ensure necessary files exist or create them
if not exist proxies.txt echo proxies.txt created & type nul > proxies.txt
if not exist newPrivateKeys.txt echo newPrivateKeys.txt created & type nul > newPrivateKeys.txt
if not exist .env echo .env created & (
    echo MAX_THREADS=10
    echo SLEEP_TIME=2
    echo DEFAULT_WALLETS=100
    echo TIMEOUT=10
    echo REFERRAL_CODES=ABC123,DEF456
    echo SKIP_ERROR_PROXIES=False
) > .env

pip install -r requirements.txt
python meomundep.py
pause
