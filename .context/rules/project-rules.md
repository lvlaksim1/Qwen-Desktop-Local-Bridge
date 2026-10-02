# Project rules

1. Core-managed files (Contract, Protocol, ENTRYPOINT, bootstrap managed blocks) must not be edited for project-specific reasons; project semantics live only in project-owned `.context/` files.
2. Every durable belief/memory entry carries `source:` and `authority:`; freshness alone never supersedes.
3. Read-only tools only until the owner explicitly authorizes write capabilities; permission policy stays external (permissions.json), never hardcoded.
4. Merges to `main`, releases, and tags require explicit owner approval; feature work happens on disposable branches which never become manager/product authority.
5. Publication of manager state follows INSTALL_PROTOCOL.md atomicity (expected-parent, coherent commit, no partial capsules).
6. Never commit secrets, build outputs, or raw chat transcripts into the capsule.
7. Web adapter isolation: DOM coupling confined to the single adapter JS file; protocol/host must not import selectors.
