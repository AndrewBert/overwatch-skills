# overwatch-5v5-hero-pick

Part of the [overwatch-skills](../../) collection.

An [Agent Skill](https://agentskills.io) that recommends what hero to play in **Overwatch 2 — 5v5 Role Queue Competitive**, based on the map and the enemy team composition. Works with Claude Code, OpenAI Codex, Cursor, and [50+ other agents](https://agentskills.io).

Ask things like:

- "What should I play on King's Row?"
- "Their tank is Winston and they have a Tracer wrecking us — help"
- "Who counters Pharah?"
- "Is my pick good here, or should I swap?"

The skill reads a curated knowledge base (`references/knowledge-base.md`) — roster, map archetypes, counter matrix, current tier list, sub-role passives, and the Hero Bans pool — and gives you a primary pick plus a fallback that survives bans.

**Scope:** 5v5 Role Queue Competitive only. Does **not** cover Stadium (separate mode, Stadium Powers change ability logic) or 6v6 Open Queue (different role balance). The name reflects this — it's a 5v5 skill, on purpose.

## Install

The easiest way (works across all supported agents):

```bash
npx skills add AndrewBert/overwatch-skills -g --skill overwatch-5v5-hero-pick
```

To update later (Overwatch balance shifts every patch):

```bash
npx skills update overwatch-5v5-hero-pick
```

For manual install and other options, see the [collection README](../../).

## Freshness

The knowledge base has a **"Valid as of"** date and a **"Last balance patch reflected"** date at the top. Overwatch balance shifts every patch and the meta turns over fast — if the KB is more than ~3 weeks stale, the skill will pull recent patch notes itself and warn you.

If you notice the KB is behind a recent patch, please open an issue or a PR.

## Contributing

PRs are welcome — especially patch-note updates, counter-matrix corrections, and tier shifts after a balance update.

**Hard rules of evidence — please read [CONTRIBUTING.md](../../CONTRIBUTING.md) before opening a PR.** The short version:

- Source from **official Blizzard sources only** — `overwatch.blizzard.com` hero pages and patch notes.
- **Do not use the Fandom wiki** as evidence. It is frequently months behind on reworks.
- **Do not use Stadium Powers** as evidence of a base ability's current state. Stadium is a separate mode with its own ability customization.

Open issues for: bugs in the skill logic, missing heroes, missing maps, suggestions for new sections.

## License

[MIT](../../LICENSE) — do what you want, no warranty.
