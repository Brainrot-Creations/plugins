<h1 align="center">Brainrot Creations · Plugins</h1>

<p align="center">
  <strong>Official Brainrot Creations plugins for Claude Code, Codex, ChatGPT, GitHub Copilot and Grok.</strong>
</p>

<p align="center">
  <a href="https://github.com/Brainrot-Creations/plugins"><img src="https://img.shields.io/badge/claude--code-plugin--marketplace-blue" alt="Claude Code Plugin Marketplace" /></a>
  <a href="LICENSE"><img src="https://img.shields.io/badge/license-MIT-blue" alt="MIT License" /></a>
</p>

---

## Install

### Claude Code

```
/plugin marketplace add Brainrot-Creations/plugins
```

Then install individual plugins:

```
/plugin install brainrot-finance@brainrot-creations
/plugin install amc-theatres@brainrot-creations
/plugin install socials@brainrot-creations
/plugin install agent-browser@brainrot-creations
/plugin install cursor-agents@brainrot-creations
/plugin install codex@brainrot-creations
/plugin install openai@brainrot-creations
```

```
/reload-plugins
```

### Grok Build

Grok reads [`.grok-plugin/marketplace.json`](./.grok-plugin/marketplace.json) from this repo, which lists only Brainrot Finance.
Add the marketplace (Grok also picks it up if you've added it in Claude Code), then open `/plugins` and install **Brainrot Finance**
from the Marketplace tab.

### GitHub Copilot CLI

```bash
copilot plugin marketplace add Brainrot-Creations/plugins
copilot plugin install brainrot-finance@brainrot-creations
```

The Copilot catalog is [`.github/plugin/marketplace.json`](./.github/plugin/marketplace.json) and lists only Brainrot Finance.

### Codex and ChatGPT

```bash
codex plugin marketplace add Brainrot-Creations/plugins
codex plugin add brainrot-finance@brainrot-creations
```

Or, in the ChatGPT desktop app, open the Plugins Directory and pick the **Brainrot Creations** marketplace.
The Codex/ChatGPT catalog is [`.agents/plugins/marketplace.json`](./.agents/plugins/marketplace.json) and lists the
same plugins as the Claude Code one (Luma Events is listed but not installable, matching `disabled` in Claude Code).

To build the ZIP for OpenAI's plugin directory, run `scripts/package-openai.sh <plugin>` (output in
`dist/`, not committed). Server-side tool changes go live without a new package; bump `version` in the
plugin's `plugin.json` and re-run only when its listing, assets or `mcp.json` change.

Each plugin has its Claude Code files (`.claude-plugin/plugin.json`, `.mcp.json`) and its portable
[Agent Plugins](https://agent-plugins.org) files (`plugin.json`, `mcp.json`) side by side. Brainrot Finance also has a Grok manifest (`.grok-plugin/plugin.json`).

---

## Plugins

### [Brainrot Finance](./plugins/brainrot-finance)

Live quotes and history for stocks, crypto, currencies, gold and silver and private-market companies, plus your
Brainrot portfolios. Connects to `https://mcp.finance.brainrotcreations.com/mcp`; you sign in with your Brainrot
account and approve the app on brainrotcreations.com.

**Install:** `/plugin install brainrot-finance@brainrot-creations` (Claude Code) · `codex plugin add brainrot-finance@brainrot-creations` (Codex)

### [AMC Theatres](./plugins/amc-theatres)

<p>
  <img src="./assets/amc.gif" alt="AMC Theatres" width="100%" />
</p>

Search AMC theatres, get showtimes, and view real-time seat maps. No auth required — works out of the box.

**Install:** `/plugin install amc-theatres@brainrot-creations`

### [Socials](./plugins/socials)

<p>
  <img src="./assets/socials.gif" alt="Socials" width="100%" />
</p>

Connect Claude to X, LinkedIn, and Reddit via the Socials browser extension. Post, engage, search, and manage social media directly from Claude Code.

**Install:** `/plugin install socials@brainrot-creations`

### [Codex](./plugins/codex)

<p>
  <img src="./assets/agents.gif" alt="Codex" width="100%" />
</p>

Hand off tasks to OpenAI Codex CLI from Claude. Same delegation pattern as Cursor Agents — submit a task, get back the output.

**Install:** `/plugin install codex@brainrot-creations`

### [OpenAI](./plugins/openai)

<p>
  <img src="./assets/agents.gif" alt="OpenAI" width="100%" />
</p>

Call GPT-4o, o1, o3-mini, and DALL-E directly from Claude Code. Chat completions and image generation in one plugin.

**Install:** `/plugin install openai@brainrot-creations`

### [Cursor Agents](./plugins/cursor-agents)

<p>
  <img src="./assets/agents.gif" alt="Cursor Agents" width="100%" />
</p>

Delegate coding tasks to Cursor agents directly from Claude. Fire tasks in the background, collect results when done — parallel AI coding without the context switch.

**Install:** `/plugin install cursor-agents@brainrot-creations`

### [Agent Browser](./plugins/agent-browser)

Fast native browser automation for AI agents. Navigate, screenshot, fill forms, click, and extract data from any webpage — powered by Chrome DevTools Protocol.

**Install:** `/plugin install agent-browser@brainrot-creations`

---

[MIT License](./LICENSE) · [contact@brainrotcreations.com](mailto:contact@brainrotcreations.com)
