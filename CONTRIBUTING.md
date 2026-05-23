# Contributing

Thanks for wanting to help keep this skill accurate. Overwatch balance turns over fast and a community-maintained KB is the only way to keep up — but a stale or wrong KB is worse than no KB at all, so we're strict about sourcing.

## Rules of evidence

When changing any ability, mechanic, counter, or tier entry, the PR description must cite an **official Blizzard source**:

- ✅ **Hero pages** at `overwatch.blizzard.com/en-us/heroes/<hero>/` — authoritative for ability names, base values, and current behavior.
- ✅ **Patch notes** at `overwatch.blizzard.com/en-us/news/patch-notes/` — authoritative for recent changes. Link the specific patch.
- ✅ **In-game hero gallery / Training Range** — acceptable for quickly verifying current ability text if you screenshot it; note the patch you're on.

### Sources we do NOT accept

- ❌ **Fandom wiki** (`overwatch.fandom.com`) — frequently months stale on reworks. Past audits have found it wrong about basic ability mechanics on heroes that were reworked over a year ago. Don't cite it.
- ❌ **Stadium Powers / Stadium gameplay** — Stadium is a separate mode with mid-match ability customization. A Stadium Power that "makes Cassidy's roll cleanse" does **not** mean base-mode Cassidy's roll cleanses. Never cite Stadium as evidence for base 5v5 Role Queue behavior.
- ❌ **6v6 Open Queue** — different role balance, different meta. Don't use as evidence for the 5v5 Role Queue KB.
- ❌ **Third-party stat sites for ability mechanics** (Overbuff, owherostats, etc.) — fine as a secondary signal for tier placement and pick rates, **not** for what an ability does. Tier-list edits may cite these as supporting evidence alongside community consensus.
- ❌ **YouTube videos, streamer claims, Reddit threads** — fine as context for "the community thinks X is strong right now," not as authoritative evidence for mechanics.

## PR checklist

For each change, the PR description should include:

- [ ] **What changed** — one line per edit.
- [ ] **Which file** — `SKILL.md`, `references/knowledge-base.md`, `references/hero-pool.md` (don't PR personal hero pools — that file is a template).
- [ ] **Source link** — direct URL to the Blizzard hero page or patch notes that supports it.
- [ ] **Patch version** — which patch reflects this state (e.g. "post May 12, 2026 patch").
- [ ] **5v5 Role Queue confirmed** — for ability/counter changes, confirm the behavior holds in 5v5 Role Queue (not Stadium, not Open Queue).

## What kinds of PRs are most useful

In rough priority order:

1. **Patch updates** — a new patch shipped, here are the deltas to the counter matrix / tier list / ability notes.
2. **Outright errors** — an ability description that's wrong about base behavior, with a Blizzard source proving it.
3. **Missing heroes or maps** — a new hero or map shipped and isn't in the roster / archetype table yet.
4. **Counter matrix gaps** — an enemy hero with no entry in the counter matrix.
5. **Tier shifts** — supported by either Blizzard patch-note changes (buffs/nerfs) or strong cross-source community consensus (multiple tier lists agreeing).
6. **Caveats / volatility flags** — heroes whose balance is in flux and recommendations should hedge.

## What we'll likely push back on

- Tier shifts based on a single source or "I think X is better."
- Counter additions that are matchup feelings without a clear mechanical reason.
- Restructures of `SKILL.md` — the orchestration logic is intentionally minimal; new sections need a strong case.
- Anything Stadium-specific. (Open a separate skill for Stadium if you want; this one is 5v5 Role Queue only.)

## Style

- Keep the KB scannable. Bullet lists, short lines, no walls of prose.
- When citing a mechanic in the counter matrix, name the **specific ability** ("Zarya's beam ignores Defense Matrix") — not vague ("Zarya beats D.Va").
- Use the exact ability names from the Blizzard hero page (capitalization included).

## How edits are reviewed

I (maintainer) will spot-check the cited source against the proposed change and look for internal consistency with the rest of the KB (e.g. if you change a hero's ability behavior, the counter matrix lines that reference it may also need updating). For larger PRs, I may run the same Blizzard-source-only audit pattern that the KB was originally built with.

Thanks again — please be patient on review; this is a hobby project.
