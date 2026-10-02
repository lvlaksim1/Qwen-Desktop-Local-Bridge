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

B-007 Write access to the target repository works via the owner-supplied classic PAT (repo scope); token was transmitted in plaintext chat and must be considered compromised until revoked.
source: successful git push test 2026-09-29 (commit 2b4c202) + API check @ 2026-10-02
authority: verified-runtime

B-008 Qwen web UI DOM/selectors and submit transport behavior are unknown; adapter feasibility on Qwen is unverified.
source: absence of any probing work in either repository @ 2026-10-02
authority: manager-inference
