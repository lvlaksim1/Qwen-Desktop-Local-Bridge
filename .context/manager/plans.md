# Manager plans

P-001 (serves I-001/G-001): after every semantic change rerun validate/ready/recover locally on `manager-state` checkout; publish as coherent commits; keep working views consistent with BDI state.

P-002 (serves I-002/G-002): reconnaissance phase —
1. inspection of chat.qwen.ai composer structure via a Diagnostics-style probe ported from the reference adapter;
2. identify stable insertion + submit path mirroring Input.insertText + form.requestSubmit approach;
3. document marker-envelope candidates for Qwen (strict, parseable, collision-free);
4. output: docs/ADAPTER-FEASIBILITY.md + decision record; escalate to owner if Qwen UI forbids reliable injection.

P-003 (serves G-003/I-003): scaffold phase after P-002 — port project layout (src/tests/installer/scripts/.github) from reference at 6e2a0b5, rename namespaces, strip ChatGPT-specific selectors, keep protocol/host/ledger/policy structure; verify `dotnet build` + ledger tests pass in CI before any feature work.

P-004 (serves G-005): CI parity — adapt build.yml workflow to produce dev-release artifacts; requires owner approval for first release/tag.
