# Next actions

1. (Windows host) Install dev-3de2d5b Setup.exe (https://github.com/lvlaksim1/Qwen-Desktop-Local-Bridge/releases/download/dev-3de2d5b/QwenDesktopLocalBridge-Setup.exe) — or apply Update-from-dev-0bc8fd9.exe — and run live handshake against coder.qwen.ai (BRIDGE-M1 equivalent: READY probe, fs.list/fs.read_text round-trip). NOTE: previous builds opened chat.qwen.ai; only dev-3de2d5b+ targets coder.qwen.ai.
2. (Manager/next runtime) Calibrate bridge-adapter.js selectors against actual coder.qwen.ai DOM (likely different from Qwen Chat; possibly an agentic coding UI) if M1 handshake fails; record findings as episodic memory + belief update (B-014).
3. (Owner gate) Confirm whether protocol envelope naming should stay bridge-local or be renamed for Qwen branding (former DEC-0002 question — current code keeps the reference v1 envelope unchanged).
4. After M1 passes: port reliability probes (M2 equivalent) and durable-ledger crash-resume checks (M3 equivalent); cut first dev release via installer scripts.
