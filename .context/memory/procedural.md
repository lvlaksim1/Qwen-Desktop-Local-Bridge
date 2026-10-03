# Procedural memory

P-001 Install procedure that worked: clone target; create manager-state branch locally; run pinned Core `installer/capsulectl.py install --target <checkout> --repository owner/name --branch manager-state --product-branch main --core-commit <pin>`; then edit only project-owned semantic files; refresh manifest via repair; rerun validate/ready/recover; publish. source: legacy-v2-state; authority: legacy-unverified

P-002 Manifest refresh: `capsulectl repair` regenerates manifest lists (rules/decisions/memory.episodes) from the actual tree while preserving manager_id and authority fields; use after adding decision/episode files instead of hand-editing the manifest. source: legacy-v2-state; authority: legacy-unverified

P-003 Validation runs offline against the working-tree snapshot (load_snapshot reads files, not git objects), so local edits are validatable before commit/push. source: legacy-v2-state; authority: legacy-unverified
