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
  ---

  ## How to Setup

* Edit line 5 with your status.txt github raw link then line 9 with your discord webhook (Please note it may not work) Then
* THEN GO TO THIS GITHUB FOR DASHBOARD (This is extra if you want it) https://github.com/Vertex-Studios-0/XNEON-V1-DASHBOARD-TEMPLETE/tree/main and copy the html code and put it in a github repo or vs code and then FILL OUT LINES 45,46,47,51,52 and then deploy it to a website hosting server, Example: Github Pages, Cloudflare Pages, Render and more, After this you are almost done Just make sure you paste you LUA script in at line 63, After that you are now done!
