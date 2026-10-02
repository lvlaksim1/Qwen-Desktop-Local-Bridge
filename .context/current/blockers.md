# Blockers and open risks

R-001 Qwen web UI automation surface is unprobed; adapter may need a different injection/submit mechanism than ChatGPT's (high impact on plan; mitigated by isolating adapter as compatibility layer).
R-002 Owner PAT exposed in chat; must be revoked/rotated by owner (security risk to repository).
R-003 No CI/build configured in this repository yet; nothing can be verified beyond static analysis until scaffold lands.
R-004 Protocol markers for Qwen variant undefined — needs explicit decision before implementation (tracked as DEC-0002 proposal).
