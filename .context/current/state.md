# Current state

Bootstrap complete (2026-10-02): canonical Context Capsule v2 installed on permanent `manager-state` branch from pinned Core 7aa1e697504e686b02a4d7f1539a157214d5e692; project semantics captured from owner statements and the verified reference repository.

Product reality (updated 2026-10-02): per owner directive ("сделай аналог chatgpt-desktop-local-bridge для Qwen"), the full port was created and published to `main` at commit 8eead85 — complete analog of the reference: .NET 8 WPF+WebView2 host pinned to https://coder.qwen.ai, Local Bridge protocol v1 (fail-closed), durable request ledger, external permission policy, read-only tools (system.info, fs.list, fs.read_text), bridge-adapter.js with Qwen composer/message selectors as a replaceable compatibility layer, Inno Setup installer, delta-update scripts, CI workflow, LedgerTests. C# core is byte-equivalent to reference @6e2a0b5 after rename; intentional diffs limited to host/brand strings and Qwen selectors. Adapter protocol node test passes; dotnet build not run here (no SDK) — Windows build verification pending on real machine.

Next milestone: live E2E on Windows against coder.qwen.ai (BRIDGE-M1 equivalent handshake + READY probe), selector calibration (P-002 folded into live testing), then feature parity checks M2/M3 equivalents.

Branches: main = product authority (HEAD 8eead85); manager-state = manager-state authority. Default branch remains main.

Current dev-release (2026-10-02): tag dev-0bc8fd9 (main@0bc8fd9) — QwenDesktopLocalBridge-Setup.exe + delta Update-from-dev-a70e205.exe. Product fully isolated from ChatGPT Desktop Local Bridge (unique AppId, install dir, registry group, AppMutex added so Setup closes running instance instead of failing). Earlier link dev-6c91e8b was stale/non-existent (404).

Host switch (2026-10-03): per owner directive the application now targets https://coder.qwen.ai/ instead of chat.qwen.ai. Shipped in main@3de2d5b (start URL, HTTPS host allow-list incl. subdomains, tests, README). CI Windows Build green; current release: dev-fc319eb (Setup.exe + deltas). Isolation defect fixed in fc319eb: Qwen AppId GUID was inherited from ChatGPT reference (shared product identity — Setup asked to close the other app); now unique {{6B6ED332-...}} (B-012 superseded by B-015). Adapter selectors were written for chat.qwen.ai and are unverified against coder.qwen.ai (see B-014); live M1 handshake is the gating check.
