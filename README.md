# Overwatch Skills

A collection of [Agent Skills](https://agentskills.io) for Overwatch 2 — works with **Claude Code, OpenAI Codex, Cursor, Gemini CLI, OpenCode, GitHub Copilot, Goose**, and [50+ other agents](https://agentskills.io).

## Skills

- **[overwatch-5v5-hero-pick](skills/overwatch-5v5-hero-pick/)** — Recommends hero picks in **5v5 Role Queue Competitive** based on the current map and enemy team composition. Gives you a primary pick plus a fallback that survives bans.

More skills planned.

## Install

Install with the [`skills` CLI](https://github.com/vercel-labs/skills) (works across all supported agents):

```bash
npx skills add AndrewBert/overwatch-skills -g
```

To install just one specific skill from this repo:

```bash
npx skills add AndrewBert/overwatch-skills -g --skill overwatch-5v5-hero-pick
```

### Updating

Overwatch balance shifts every patch. To pull the latest version of the knowledge base:

```bash
npx skills update overwatch-5v5-hero-pick
```

Or update everything:

```bash
npx skills update
```

### Targeting a specific agent

By default `npx skills` installs to every detected agent. To target one:

```bash
npx skills add AndrewBert/overwatch-skills -g -a claude-code
npx skills add AndrewBert/overwatch-skills -g -a codex
npx skills add AndrewBert/overwatch-skills -g -a cursor
```

### Manual install (no `npx`)

Copy `skills/overwatch-5v5-hero-pick/` into your agent's skills directory. Common locations:

- Claude Code: `~/.claude/skills/`
- OpenAI Codex: `~/.agents/skills/`
- Cursor: `~/.cursor/skills/`

## Contributing

PRs are welcome — especially patch-note updates and corrections. See [CONTRIBUTING.md](CONTRIBUTING.md) for the rules of evidence (Blizzard-official sources only; no Fandom, no Stadium Powers).

## License

[MIT](LICENSE) — fan-made, not affiliated with or endorsed by Blizzard Entertainment.
