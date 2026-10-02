# DEC-0001: Permanent manager-state branch topology

Date: 2026-10-02
Status: accepted

Context: The sibling reference project actively uses disposable dev/feature branches and publishes dev-releases from them; durable manager state must survive branch churn. Deployment pins come from repo-factory; Core is installed from context-capsule@7aa1e697504e686b02a4d7f1539a157214d5e692.

Decision: Use split authority: `manager-state` is the permanent manager-state authority branch; `main` is product authority and default branch. Core-clean install performed directly on `manager-state`; discovery redirect on `main` deferred until owner approves adding bootstrap files to the product branch.

Consequences: manager state survives product-branch churn; `main` stays free of capsule noise for now; reinstantiation resolves both authority coordinates from manifest. Single-branch mode rejected because planned active feature/release branch usage mirrors the reference project.
