# Latest handoff

## Last completed work

2026-10-02 (second runtime session): per explicit owner directive, built and published the full functional analog of chatgpt-desktop-local-bridge for Qwen to `main@8eead85` (31 files). Ported from reference @6e2a0b5: WPF+WebView2 host pinned to https://coder.qwen.ai with host allow-list updated, Local Bridge protocol v1 (fail-closed), DurableRequestLedger, PermissionPolicy (external permissions.json), ToolRouter with read-only system.info/fs.list/fs.read_text, bridge-adapter.js extended with Qwen composer/message selectors as replaceable compat layer, Inno Setup installers, delta-update scripts, CI build.yml, LedgerTests. Verified: diff parity after rename, node adapter protocol test PASS; dotnet build deferred to Windows (no SDK here). Manager state on `manager-state` reconciled accordingly (beliefs B-009/B-010, I-003 completed, plans/state/next/blockers updated).

## Verified current state

See `.context/current/state.md`: product implementation is live on main@8eead85; capsule VALID/READY/recover re-run on this final snapshot before publication; next milestone is live E2E handshake on a real Windows machine against coder.qwen.ai.

## Additional 2026-10-02 update

CI confirmed green via public API; commits a70e205 + 0bc8fd9 [dev-release] triggered prerelease dev-0bc8fd9 with Setup.exe incl. AppMutex fix (isolated from ChatGPT app; link given to owner). Belief B-011 added, R-003 closed.

## Next operation

Windows-host build + BRIDGE-M1-equivalent live probe against coder.qwen.ai; calibrate selectors if handshake fails; then M2/M3-equivalent reliability and durable-ledger checks; first dev release requires owner approval.

## Additional 2026-10-03 update

Owner directive: app must work with https://coder.qwen.ai/, not chat.qwen.ai. Repointed host everywhere (MainWindow.xaml.cs start URL + allow-list, bridge-adapter.js comment, LedgerTests, adapter test fixture, README) in main@3de2d5b; node adapter protocol test PASS; git grep confirms zero chat.qwen refs. CI run 37085522846 success; prerelease dev-3de2d5b published (Setup.exe ~51.4 MB + Update-from-dev-0bc8fd9.exe). New beliefs B-013/B-014; next.md points at dev-3de2d5b installer; coder.qwen.ai DOM calibration is now the key open risk.
