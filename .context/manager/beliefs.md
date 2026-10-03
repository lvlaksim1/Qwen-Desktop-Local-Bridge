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

B-009 Product implementation exists on `main` at commit 8eead85: full analog of chatgpt-desktop-local-bridge ported to Qwen (31 files: WPF+WebView2 host pinned to https://coder.qwen.ai, Bridge protocol v1 classes, durable ledger, permission policy, read-only tools system.info/fs.list/fs.read_text, bridge-adapter.js with Qwen composer/message selectors as replaceable compat layer, installer, update scripts, CI workflow, LedgerTests). Owner directive 2026-10-02: same functionality and purpose as the reference, targeting Qwen instead of ChatGPT.
source: owner directive @ 2026-10-02 + git push main 2b4c202..8eead85 verified via git ls-remote
authority: owner-directive

B-010 C# sources are byte-equivalent to the reference after identifier rename (QwenDesktopLocalBridge->ChatGptDesktopLocalBridge); only intentional diffs remain: host URL/coder.qwen.ai allow-list in MainWindow.xaml.cs, brand strings in BridgeHost.cs, and Qwen-specific selector additions in bridge-adapter.js. dotnet SDK unavailable in this environment, so no Windows build was run here; node adapter protocol test passes (scripts/test-bridge-adapter-protocol.mjs -> PASS).
source: diff -r between local clones of reference @6e2a0b5 and qwen checkout @ 2026-10-02; node test run
authority: verified-repository

B-011 Windows CI build verified green and first dev-release published: GitHub Actions "Windows Build" completed success on main (8eead85 and trigger commit a70e205); prerelease tag dev-a70e205 contains QwenDesktopLocalBridge-Setup.exe (49.1 MB) and QwenDesktopLocalBridge-PublishManifest.json. Installer link delivered to owner 2026-10-02.
source: public GitHub API checks @ 2026-10-02 (actions/runs conclusion=success; releases/tags/dev-a70e205 assets) + git push a70e205 [dev-release]
authority: verified-repository

B-012 [SUPERSEDED by B-015 @ 2026-10-03] Earlier claim of full product isolation was wrong: the Qwen installer had been verified only for brand strings/dirs, but the Inno Setup AppId GUID was still inherited verbatim from the ChatGPT reference project ({{7D6B9AF8-...}}), which is what actually ties two Inno-based products together for Setup's running-application detection and registry identity. Owner report "установка просит закрыть запущенный ChatGptDesktopLocalBridge" was therefore correct evidence of a real shared identity, not a stale-link artifact. Kept for history; see B-015 for current truth.
source: re-inspection of installer/QwenDesktopLocalBridge.iss on origin/main @ 2026-10-03 (grep found 7D6B9AF8 in .iss, Apply-Update.ps1, Uninstall-Bridge.ps1)
authority: verified-repository

B-013 Target host changed from chat.qwen.ai to https://coder.qwen.ai/ per explicit owner directive 2026-10-03 ("приложение должно работать с https://coder.qwen.ai/, а не с https://chat.qwen.ai/"). Applied in main@3de2d5b: start URL + HTTPS host allow-list (exact + subdomains) in MainWindow.xaml.cs, adapter comment, LedgerTests conversation URIs, adapter protocol test fixture href, README. git grep on main shows zero remaining chat.qwen references.
source: owner directive @ 2026-10-03 + commit 3de2d5b pushed and verified via git ls-remote + git grep origin/main
authority: owner-directive

B-014 coder.qwen.ai DOM structure is unverified; the bridge-adapter.js selector set was authored against chat.qwen.ai and may require calibration for coder.qwen.ai (which may be an agentic coding UI with a different composer). Live M1 handshake on Windows is now the primary feasibility gate for the new host.
source: absence of any probing of coder.qwen.ai in this environment @ 2026-10-03
authority: manager-inference

B-015 Product isolation defect found and fixed per owner report ("при установке просит закрыть запущенный ChatGptDesktopLocalBridge"): root cause was the Inno Setup AppId GUID inherited from the ChatGPT reference project — two apps with the same AppId are treated by Setup as the same product, so Setup's CloseApplications detection matched the other app's running process. Fixed in main@fc319eb: Qwen-specific AppId {{6B6ED332-7F58-4A6F-B706-A65AFE339FDD}} applied consistently in installer/QwenDesktopLocalBridge.iss, scripts/update/Apply-Update.ps1 and Support/Uninstall-Bridge.ps1; git grep confirms zero remaining 7D6B9AF8 references. CI "Windows Build" green on fc319eb; prerelease dev-fc319eb published with Setup.exe + Update-from-dev-0bc8fd9/3de2d5b. Note: users who installed a pre-fc319eb Qwen build have it registered under the old shared key; Setup will treat the new build as a fresh install (old entry should be removed via uninstall or left orphaned — flagged to owner).
source: owner report @ 2026-10-03 + commit fc319eb pushed (git ls-remote verified) + GitHub API run conclusion=success + releases/dev-fc319eb assets
authority: owner-directive
