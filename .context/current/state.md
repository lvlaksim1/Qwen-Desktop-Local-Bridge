# Current state

Bootstrap complete (2026-10-02): canonical Context Capsule v2 installed on permanent `manager-state` branch from pinned Core 7aa1e697504e686b02a4d7f1539a157214d5e692; project semantics captured from owner statements and the verified reference repository.

Product reality (updated 2026-10-02): per owner directive ("сделай аналог chatgpt-desktop-local-bridge для Qwen"), the full port was created and published to `main` at commit 8eead85 — complete analog of the reference: .NET 8 WPF+WebView2 host pinned to https://chat.qwen.ai, Local Bridge protocol v1 (fail-closed), durable request ledger, external permission policy, read-only tools (system.info, fs.list, fs.read_text), bridge-adapter.js with Qwen composer/message selectors as a replaceable compatibility layer, Inno Setup installer, delta-update scripts, CI workflow, LedgerTests. C# core is byte-equivalent to reference @6e2a0b5 after rename; intentional diffs limited to host/brand strings and Qwen selectors. Adapter protocol node test passes; dotnet build not run here (no SDK) — Windows build verification pending on real machine.

Next milestone: live E2E on Windows against chat.qwen.ai (BRIDGE-M1 equivalent handshake + READY probe), selector calibration (P-002 folded into live testing), then feature parity checks M2/M3 equivalents.

Branches: main = product authority (HEAD 8eead85); manager-state = manager-state authority. Default branch remains main.
