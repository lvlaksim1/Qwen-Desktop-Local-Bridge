# Next actions

1. (Windows host) Build and run the app on a real Windows machine: `dotnet build QwenDesktopLocalBridge.sln -c Release`, then live handshake against chat.qwen.ai (BRIDGE-M1 equivalent: READY probe, fs.list/fs.read_text round-trip).
2. (Manager/next runtime) Calibrate bridge-adapter.js selectors against actual chat.qwen.ai DOM if M1 handshake fails; record findings as episodic memory + belief update.
3. (Owner gate) Confirm whether protocol envelope naming should stay bridge-local or be renamed for Qwen branding (former DEC-0002 question — current code keeps the reference v1 envelope unchanged).
4. After M1 passes: port reliability probes (M2 equivalent) and durable-ledger crash-resume checks (M3 equivalent); cut first dev release via installer scripts.
