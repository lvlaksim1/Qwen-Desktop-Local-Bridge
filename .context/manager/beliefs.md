# Manager beliefs

B-001 Target repository exists with default branch `main`, HEAD 2b4c202 ("Test write access via PAT"), containing only README.md; no code, no workflows, no issues/PRs.
source: GitHub API + git clone @ 2026-10-02
authority: verified-repository

B-002 Repository was created 2026-09-29 as `lvlaksim1/test` and renamed to `Qwen-Desktop-Local-Bridge` on 2026-10-02 at owner request; old URL redirects (301).
source: owner directive in chat + GitHub API rename check @ 2026-10-02
authority: owner-directive

B-003 The intended product is a Qwen-chat variant of ChatGPT Desktop Local Bridge, reusing its architecture (fail-closed bridge protocol, in-process host, external permissions.json, durable ledger, isolated DOM adapter).
source: owner statement of intent @ 2026-10-02 (rename to Qwen Desktop Local Bridge following study of chatgpt-desktop-local-bridge, then PM population directive)
authority: owner-directive (inferred intent; strong, but confirm before irreversible design choices)

B-004 Reference implementation is live and milestone-verified: chatgpt-desktop-local-bridge main@6e2a0b5; BRIDGE-M1/M2/M3 closed (READY + fs.read_text proven on real Windows PC; fail-closed adapter; durable ledger slice).
source: clone of lvlaksim1/chatgpt-desktop-local-bridge @ 2026-10-02, README status section
authority: verified-repository

B-005 Canonical Project Manager Core is lvlaksim1/context-capsule pinned by repo-factory deployment pin CONTEXT_CAPSULE_CORE_COMMIT=7aa1e697504e686b02a4d7f1539a157214d5e692 (v2 line, VERSION 2.0.0-dev).
source: repo-factory .github/workflows/create-repository.yml line 125 @ 2026-10-02
authority: verified-repository

B-006 The pinned v2 Core does not define `state-integrity.json`, sealed generations, or digest recomputation; VALID/READY/recover are the integrity gates of this Core version.
source: grep of installer/, schemas/, templates/ at CORE_COMMIT @ 2026-10-02
authority: verified-repository

B-007 Write access to the target repository works via owner-supplied credentials; owner declared access hygiene under control (2026-10-02) — no outstanding security action tracked.
source: successful git push test 2026-09-29 (commit 2b4c202) + owner directive @ 2026-10-02
authority: owner-directive

B-008 Qwen web UI DOM/selectors and submit transport behavior are unknown; adapter feasibility on Qwen is unverified (no live browser available in this environment).
source: absence of any probing work in either repository @ 2026-10-02
authority: manager-inference

B-009 Product implementation exists on `main` at commit 8eead85: full analog of chatgpt-desktop-local-bridge ported to Qwen (31 files: WPF+WebView2 host pinned to https://chat.qwen.ai, Bridge protocol v1 classes, durable ledger, permission policy, read-only tools system.info/fs.list/fs.read_text, bridge-adapter.js with Qwen composer/message selectors as replaceable compat layer, installer, update scripts, CI workflow, LedgerTests). Owner directive 2026-10-02: same functionality and purpose as the reference, targeting Qwen instead of ChatGPT.
source: owner directive @ 2026-10-02 + git push main 2b4c202..8eead85 verified via git ls-remote
authority: owner-directive

B-010 C# sources are byte-equivalent to the reference after identifier rename (QwenDesktopLocalBridge->ChatGptDesktopLocalBridge); only intentional diffs remain: host URL/chat.qwen.ai allow-list in MainWindow.xaml.cs, brand strings in BridgeHost.cs, and Qwen-specific selector additions in bridge-adapter.js. dotnet SDK unavailable in this environment, so no Windows build was run here; node adapter protocol test passes (scripts/test-bridge-adapter-protocol.mjs -> PASS).
source: diff -r between local clones of reference @6e2a0b5 and qwen checkout @ 2026-10-02; node test run
authority: verified-repository

B-011 Windows CI build verified green and first dev-release published: GitHub Actions "Windows Build" completed success on main (8eead85 and trigger commit a70e205); prerelease tag dev-a70e205 contains QwenDesktopLocalBridge-Setup.exe (49.1 MB) and QwenDesktopLocalBridge-PublishManifest.json. Installer link delivered to owner 2026-10-02.
source: public GitHub API checks @ 2026-10-02 (actions/runs conclusion=success; releases/tags/dev-a70e205 assets) + git push a70e205 [dev-release]
authority: verified-repository

B-012 Full product isolation from ChatGPT Desktop Local Bridge confirmed in main: unique AppId {{7D6B9AF8-...}}, install dir %LOCALAPPDATA%\Programs\Qwen Desktop Local Bridge, no chatgpt references anywhere in iss/cs/csproj/yml/js sources (git grep verified); owner-reported "installed over ChatGPT app" was caused by stale non-existent release link dev-6c91e8b (404) and/or running-instance file lock, not by shared identity. New prerelease dev-0bc8fd9 adds AppMutex=QwenDesktopLocalBridge_SingleInstance so Setup closes a running instance instead of failing; CI green; assets include Setup.exe + Update-from-dev-a70e205.exe.
source: git grep origin/main @ 2026-10-02 + installer diff commit 0bc8fd9 + GitHub API run 37023533650 conclusion=success + releases assets listing
authority: verified-repository
