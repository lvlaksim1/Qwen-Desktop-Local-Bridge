# Blockers and open risks

R-001 Qwen web UI automation surface is unprobed; adapter may need a different injection/submit mechanism than ChatGPT's (high impact on plan; mitigated by isolating adapter as compatibility layer).
R-002 [CLOSED 2026-10-02] Access-token hygiene concern: owner confirmed access is under control and no further action required; do not raise again unless new evidence of compromise appears.
R-003 [PARTIAL 2026-10-02] CI workflow (.github/workflows/build.yml) is published on main, but no Windows build has actually run yet (no dotnet SDK in manager environment); first real build verification still pending on a Windows host or GH Actions runner result.
R-004 Protocol markers for Qwen variant undefined — needs explicit decision before implementation (tracked as DEC-0002 proposal). Current state: reference v1 envelope kept unchanged in the ported code; rename remains an open owner-gate question, not a blocker to M1 testing.
