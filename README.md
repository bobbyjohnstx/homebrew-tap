# homebrew-tap

Homebrew formula for [tinycode](https://github.com/bobbyjohnstx/tinycode), a local-LLM-first AI coding assistant.

## Install

```bash
brew install bobbyjohnstx/tap/tinycode
```

## Update

```bash
brew upgrade tinycode
```

## What is tinycode?

An open-source AI coding assistant that runs air-gapped against your own LLMs — Ollama, vLLM, LM Studio, or any OpenAI-compatible endpoint. No cloud accounts, no API keys, no data leaving your network.

- Terminal UI, web UI, and IDE integration (ACP)
- 23 built-in agents, 7 skills, 32 plugins (plugin SDK included)
- Single Go binary, no runtime dependencies

## Ecosystem

| Project | Description |
|---------|-------------|
| [tinycode](https://github.com/bobbyjohnstx/tinycode) | Core binary — server, TUI, web UI, agents, skills, tools, plugins |
| [tinycode-container](https://github.com/bobbyjohnstx/tinycode-container) | OCI container image for Kubernetes and OpenShift |
| [tinycode-operator](https://github.com/bobbyjohnstx/tinycode-operator) | Kubernetes Operator for OpenShift |
| [homebrew-tap](https://github.com/bobbyjohnstx/homebrew-tap) | This repo — Homebrew formula |

## License

MIT
