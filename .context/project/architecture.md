# Architecture (planned baseline)

Stack: .NET 8, WPF, Microsoft Edge WebView2, single-process in-process bridge (no localhost server).

Layers (mirroring the verified ChatGPT bridge reference at `lvlaksim1/chatgpt-desktop-local-bridge` main@6e2a0b5):

- **MainWindow / WebView2 host** — loads the Qwen chat site with a persistent user profile directory kept outside the install folder.
- **Web adapter (single JS file)** — injects service messages via native `Input.insertText`, submits through the current composer form, confirms local send by composer-clear or new-message detection; never overwrites a user draft; fail-closed on malformed envelopes. Must be re-engineered for Qwen's DOM (selectors unknown yet).
- **Native bridge host** — parses exactly one strict machine-request envelope per assistant message, checks session/idempotency/registration/permission before execution, returns a bounded result envelope. Protocol name/markers for the Qwen variant are not yet defined (open decision DEC-0002).
- **ToolRouter + capability registry** — single registry shared by dispatch, permission capability, and bootstrap exposure.
- **PermissionPolicy** — external `%APPDATA%\QwenDesktopLocalBridge\permissions.json`, default safe profile, AUTO/ASK/DENY per capability.
- **DurableRequestLedger** — survives restart, separates execution from delivery, blocks unsafe replay of Executing state, stores pending result payload bounded, deletes payload after confirmed delivery.
- **Audit log** — JSONL per day under `%LOCALAPPDATA%`.

Not yet built: none of the above exists in this repository yet; all code currently lives only in the reference repository.
