# Next actions

1. (Windows host) Install dev-a70e205 Setup.exe (https://github.com/lvlaksim1/Qwen-Desktop-Local-Bridge/releases/download/dev-a70e205/QwenDesktopLocalBridge-Setup.exe) and run live handshake against chat.qwen.ai (BRIDGE-M1 equivalent: READY probe, fs.list/fs.read_text round-trip). Source-level `dotnet build` no longer required for this step — CI already produced the binary.
2. (Manager/next runtime) Calibrate bridge-adapter.js selectors against actual chat.qwen.ai DOM if M1 handshake fails; record findings as episodic memory + belief update.
3. (Owner gate) Confirm whether protocol envelope naming should stay bridge-local or be renamed for Qwen branding (former DEC-0002 question — current code keeps the reference v1 envelope unchanged).
4. After M1 passes: port reliability probes (M2 equivalent) and durable-ledger crash-resume checks (M3 equivalent); cut first dev release via installer scripts.
