# Muvon Homebrew Tap

Homebrew formulae and casks for [Muvon](https://muvon.io) tools.

## Install

```bash
brew tap muvon/tap
```

## Formulae

### octomind

Session-based AI development assistant with conversational codebase interaction, built-in MCP tools, and multi-provider AI integration.

```bash
brew install muvon/tap/octomind
```

### octocode

AI-powered code indexer with semantic search, GraphRAG knowledge graphs, and MCP server for multi-language codebases.

```bash
brew install muvon/tap/octocode
```

### octobrain

Standalone memory management system for AI context and conversation state.

```bash
brew install muvon/tap/octobrain
```

> **Note:** octobrain macOS builds are ARM only (Apple Silicon).

### octofs

Tuned and fully-featured MCP for working with the filesystem in an LLM-optimized way.

```bash
brew install muvon/tap/octofs
```

## Casks

### octoweb

Lightweight macOS browser with AI assistant integration via ACP.

```bash
brew install --cask muvon/tap/octoweb
```

**Dependencies:** `octomind` and `octobrain` are automatically installed via Homebrew.

### vext

Fast local voice-to-text for macOS. Dictation, meeting recording, translation, and LLM-powered text enhancement.

```bash
brew install --cask muvon/tap/vext
```

> **Note:** Apple Silicon only (M1/M2/M3/M4). Requires macOS Sonoma or newer.

### timex

Automatic Mac time tracker, break timer, and lid-down keeper — all in one menu bar pill. Local SQLite, no cloud, no account.

```bash
brew install --cask muvon/tap/timex
```

> **Note:** Apple Silicon only (M1/M2/M3/M4). Requires macOS Sequoia or newer.

## Links

- [vext](https://github.com/muvon/vext) · [site](https://getvext.app)
- [timex](https://github.com/muvon/timex) · [site](https://gettimex.app)
- [octoweb](https://github.com/muvon/octoweb) · [docs](https://octomind.run/product/octoweb/)
- [octomind](https://github.com/muvon/octomind) · [docs](https://octomind.run/product/octomind/)
- [octocode](https://github.com/muvon/octocode) · [docs](https://octomind.run/product/octocode/)
- [octofs](https://github.com/muvon/octofs) · [docs](https://octomind.run/product/octofs/)
- [octobrain](https://github.com/muvon/octobrain) · [docs](https://octomind.run/product/octobrain/)
