# Project identity

**Qwen Desktop Local Bridge** is a planned experimental Windows desktop client that embeds the Qwen chat web app (chat.qwen.ai) in WebView2 and gives it local-computer capabilities through an in-process native bridge — without using a Qwen API key.

The project is created as a sibling of ChatGPT Desktop Local Bridge (`lvlaksim1/chatgpt-desktop-local-bridge`) with the intent to reuse its proven architecture: strict fail-closed machine protocol over the chat conversation, in-process tool host, external permission policy, durable request ledger, and an isolated DOM adapter treated as a replaceable compatibility layer.

Repository role: product source + documentation for the Qwen variant. Current content is minimal (README only); implementation has not started.

- Owner: lvlaksim1
- Created: 2026-09-29 (as `test`, renamed to `Qwen-Desktop-Local-Bridge` on 2026-10-02)
