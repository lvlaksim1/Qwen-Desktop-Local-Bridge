# Semantic memory

M-001 Reference project's proven reliability pattern: confirm local send by composer-clear OR exact-new-user-message after baseline; never wait for the model answer to confirm submit; delayed-status handshake up to 5 minutes. Source: chatgpt-desktop-local-bridge README/docs @6e2a0b5, 2026-10-02. Authority: verified-repository. Durable value: template for Qwen adapter design.

M-002 Durable ledger semantics: Pending payload stored bounded for crash-recovery, deleted after confirmed delivery; Executing blocks unsafe replay; Delivered never re-sent; result envelope capped (reference cap 256 KiB). Same source/authority as M-001. source: legacy-v2-state; authority: legacy-unverified

M-003 Ecosystem fact: PM Core = lvlaksim1/context-capsule; deployment pin = CONTEXT_CAPSULE_CORE_COMMIT in lvlaksim1/repo-factory create-repository.yml (currently 7aa1e69...). Consumer repos are never installation templates. Source: owner instruction + direct file reads @2026-10-02. Authority: owner-directive + verified-repository.
