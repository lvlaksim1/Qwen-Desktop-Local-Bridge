# Project goals

1. Prove the full loop on Qwen web UI: model emits a structured local request marker -> native C# host executes a permitted read-only tool -> result is injected back into the same conversation -> model continues with a normal human-visible answer. No Qwen API, no MCP server, no localhost service.
2. Reuse the ChatGPT Desktop Local Bridge design where it transfers: protocol envelope discipline, capability registry, permissions.json policy (AUTO/ASK/DENY), durable request ledger with execution/delivery separation, crash recovery, bounded result size.
3. Keep the Qwen web adapter isolated in one file as a replaceable compatibility layer; DOM changes must not force protocol or host changes.
4. Ship first prototype with read-only tools only (system.info, fs.list, fs.read_text). Write-capable tools require explicit owner decision later.
5. Distribution parity with the sibling project: per-user installer, incremental update installers, dev-release tags from CI.
