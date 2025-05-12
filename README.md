# MeoMunDep x k9finance Automation Script

This repository contains scripts to automate the process of generating Ethereum accounts, signing messages, and interacting with the K9 Finance airdrop portal (*quest.k9finance.com*).

## Contents

- **meomundep.py**: The primary Python script that:
  1. Loads environment variables from `.env`.
  2. Generates Ethereum accounts and stores private keys in `newPrivateKeys.txt`.
  3. Posts sign-in and onboarding requests to the K9 Finance portal.
  4. Logs detailed information to the console with colorized output.

- **run.bat**: Windows batch file to initialize environment, ensure required files exist, display a banner, and execute `meomundep.py`.

- **run.sh**: UNIX shell script (Linux/macOS) to perform the same initialization and execution.

- **.env**: Environment configuration file. You can customize:
  - `MAX_THREADS`: Maximum concurrent threads (default: 10).
  - `SLEEP_TIME`: Delay between batches in seconds (default: 2).
  - `DEFAULT_WALLETS`: Default number of accounts to generate if input is invalid (default: 100).
  - `TIMEOUT`: HTTP request timeout in seconds (default: 10).
  - `REFERRAL_CODES`: Comma-separated list of referral codes.
  - `SKIP_ERROR_PROXIES`: Comma-separated list of proxies to skip.

- **proxies.txt**: List of proxy addresses (one per line). Optional.

- **newPrivateKeys.txt**: Output file where generated private keys will be appended.

## Prerequisites

 - Install Python

<details>
<summary><b>Windows</b></summary>

- Download Python from [python.org](https://www.python.org/downloads/release/python-3119/)
- During installation, check "Add Python to PATH"
- Verify installation by opening Command Prompt and typing:
  ```
  python --version
  ```
  </details>

<details>
<summary><b>macOS</b></summary>

- Install [Homebrew](https://brew.sh/) first:
  ```bash
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  ```
- Install Python using Homebrew:
  ```bash
  brew install python
  ```
- Verify installation:
  ```bash
  python3 --version
  ```
  </details>

<details>
<summary><b>Linux</b></summary>

- For Ubuntu/Debian:
  ```bash
  sudo apt update
  sudo apt install python3 python3-pip -y
  ```
- For CentOS/RHEL:
  ```bash
  sudo yum install python3 python3-pip -y
  ```
- Verify installation:
  ```bash
  python3 --version
  ```
  </details>

---

- Required Python packages (install via `pip install -r requirements.txt`):
  - `eth-account`
  - `python-dotenv`
  - `colorama`
  - `Faker`
  - `pyfiglet`
  - `requests`

## Usage

1. Clone this repository.
2. Adjust `.env` as needed.
3. Place proxy list in `proxies.txt` (if using proxies).
4. Run the provided script:
   - **Windows**: Double-click `run.bat` or run it in Command Prompt.
   - **Unix/macOS**: Give execute permission (`chmod +x run.sh`) and run `./run.sh`.

The script will generate the specified number of wallets, handle sign-in and onboarding requests, and save private keys to `newPrivateKeys.txt`.

## Troubleshooting

- Ensure `.env` variables are properly set.
- Check network connectivity if HTTP requests fail.
- Review console logs for detailed error messages.

## Support
Support me with you referral: [k9finance](https://quest.k9finance.com/?refcode=WBQ282) or via donation: [Link](https://t.me/KeoAirDropFreeNe/312/27801)
