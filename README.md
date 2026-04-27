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

> **Note:** Apple Silicon only (M1/M2/M3/M4).

## Links

- [vext](https://github.com/muvon/vext) · [site](https://getvext.app)
- [octoweb](https://github.com/muvon/octoweb)
- [octomind](https://github.com/muvon/octomind) · [docs](https://octomind.muvon.io)
- [octocode](https://github.com/muvon/octocode) · [docs](https://octocode.muvon.io)
- [octobrain](https://github.com/muvon/octobrain)

