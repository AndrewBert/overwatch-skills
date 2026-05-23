# Overwatch Hero Pick — a Claude Code skill

A [Claude Code](https://claude.com/claude-code) skill that recommends what hero to play in **Overwatch 2 — 5v5 Role Queue Competitive**, based on the map, the enemy team composition, and (optionally) your personal hero pool.

Ask things like:

- "What should I play on King's Row?"
- "Their tank is Winston and they have a Tracer wrecking us — help"
- "Who counters Pharah?"
- "Is my pick good here, or should I swap?"

The skill reads a curated knowledge base (`references/knowledge-base.md`) — roster, map archetypes, counter matrix, current tier list, sub-role passives, and the Hero Bans pool — and gives you a primary pick plus a fallback that survives bans.

**Scope:** 5v5 Role Queue Competitive only. Does **not** cover Stadium (separate mode, Stadium Powers change ability logic) or 6v6 Open Queue (different role balance).

## Install

This is a Claude Code skill. To use it:

1. Clone (or download) this repo.
2. Drop the `overwatch-hero-pick/` folder into your Claude Code skills directory:
   - **macOS / Linux:** `~/.claude/skills/overwatch-hero-pick/`
   - **Windows:** `%USERPROFILE%\.claude\skills\overwatch-hero-pick\`
3. Restart Claude Code (or open a new session). The skill will trigger automatically when you ask Overwatch hero-pick questions, or you can invoke it explicitly with `/overwatch-hero-pick`.

That's it — the skill is self-contained (one `SKILL.md` + two reference files).

### Optional: personalize with your hero pool

By default, the skill gives objective recommendations. To get a second track tailored to heroes you actually play, edit `references/hero-pool.md` and replace the placeholder with your pool + comfort ratings (1 = occasional, 5 = main). Example is in that file.

## Freshness

The knowledge base has a **"Valid as of"** date and a **"Last balance patch reflected"** date at the top. Overwatch balance shifts every patch and the meta turns over fast — if the KB is more than ~3 weeks stale, the skill will pull recent patch notes itself and warn you.

If you notice the KB is behind a recent patch, please open an issue or a PR (see below).

## Contributing

PRs are welcome — especially patch-note updates, counter-matrix corrections, and tier shifts after a balance update.

**Hard rules of evidence — please read [CONTRIBUTING.md](CONTRIBUTING.md) before opening a PR.** The short version:

- ✅ Source from **official Blizzard sources only** — `overwatch.blizzard.com` hero pages and patch notes.
- ❌ **Do not use the Fandom wiki** as evidence. It is frequently months behind on reworks.
- ❌ **Do not use Stadium Powers** as evidence of a base ability's current state. Stadium is a separate mode with its own ability customization.

Open issues for: bugs in the skill logic, missing heroes, missing maps, suggestions for new sections.

## License

[MIT](LICENSE) — do what you want, no warranty.
