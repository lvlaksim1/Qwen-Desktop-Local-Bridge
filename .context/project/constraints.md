# Constraints

- Windows 10/11 target only; .NET 8 Desktop Runtime and WebView2 Runtime required.
- No official public automation contract for the Qwen web UI; adapter fragility is expected and must be isolated (compatibility-layer rule inherited from the sibling project).
- First release scope is read-only tools; write tools and any trust expansion require an explicit owner directive.
- Do not hardcode access policy in code; policy lives in external permissions.json.
- Secrets (tokens) must never be stored inside `.context/` or committed.
- Product code changes require owner-approved plan; releases/dev-tags only via the established workflow once CI is set up.
- The owner provided a GitHub PAT in chat on 2026-10-02; it should be revoked/rotated by the owner (treat as compromised).
