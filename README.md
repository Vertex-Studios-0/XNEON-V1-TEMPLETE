# 🚀 XNEON-V1

XNEON-V1 is an automated, cloud-managed script distribution ecosystem and remote kill-switch manager designed specifically for Roblox Lua environments. By pairing a centralized Node.js/Express web dashboard with the GitHub REST API, XNEON-V1 allows creators to provision dynamic runtime infrastructure instantly, monitor execution events via Discord hooks, and broadcast emergency execution halts globally in real-time.

---

## ⚡ Core Architecture

The system utilizes a dual-layer topology to ensure absolute control over remote script execution:

* **Control the script Status.
* **Runtime Layer (Lua Engine)**: An optimized loading stub embedded into clients that evaluates remote configuration states before processing game script code blocks.

---

## 🛠️ Feature Overview

* **Instant Provisioning**: Automates GitHub repository generation, branch validation, and target file creation in a single transaction.
* **Live Kill-Switch Control**: Toggles the execution state (`ON`/`OFF`) globally without altering the main client-side loadstring wrapper.
* **Cache Management Avoidance**: Appends epoch timestamp matrices to outbound `HttpGet` strings to completely bypass GitHub raw content delivery proxies.

---

## 🛰️ How the Kill-Switch Mechanism Works

* In your github repository the status.txt file determineds if the script is turned off and blocked for usage, when the status.txt files says OFF in all caps the script kicks the player and displays a message that can be found in Loader.lua file when it says ON the script works perfectly
