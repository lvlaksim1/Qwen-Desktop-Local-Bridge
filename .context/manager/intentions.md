# Manager intentions and commitments

Lifecycle: proposed -> accepted/active -> completed | cancelled | invalidated | superseded

I-001 [accepted/active] Maintain canonical Context Capsule v2 state on `manager-state`; persist semantic changes without waiting for owner requests.
basis: bootstrap completion 2026-10-02; ongoing by mandate.

I-002 [accepted/active] Perform Qwen web UI reconnaissance and produce a feasibility report (adapter strategy, selector inventory, risks) — now scoped to LIVE on-Windows calibration against chat.qwen.ai; static port already shipped under I-003.
basis: goal G-002; owner directive 2026-10-02 to build the full analog; remaining unknown is real DOM behavior.

I-003 [completed 2026-10-02] Build and publish full functional analog of chatgpt-desktop-local-bridge for Qwen (same functionality, same purpose, target chat.qwen.ai). Verification: main@8eead85 pushed and confirmed via git ls-remote; C# parity with reference @6e2a0b5 confirmed by diff after rename; node adapter protocol test PASS. dotnet build deferred to Windows host (no SDK in this environment).
basis: explicit owner directive 2026-10-02 ("тот же функционал, тоже назначение, но не для chatgpt, а для qwen").

I-004 [completed] Clean-install Project Manager v2 from pinned Core and fill substantive state; verification: capsulectl VALID + READY + recover executed against final snapshot before publication (recorded in handoff).
