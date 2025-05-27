@echo off
REM ----------------------------------------------------------------------------------------
REM Windows Batch Script to Initialize and Run the k9finance referral Script by @MeoMunDep
REM ----------------------------------------------------------------------------------------

cd /d "%~dp0"

REM Ensure necessary files exist or create them
if not exist proxies.txt echo proxies.txt created & type nul > proxies.txt
if not exist newPrivateKeys.txt echo newPrivateKeys.txt created & type nul > newPrivateKeys.txt
if not exist .env (
	echo Copying configuration file
	copy .env.example .env
) else (
	echo Skipping .env copying
)

pip install -r requirements.txt
python meomundep.py
pause
