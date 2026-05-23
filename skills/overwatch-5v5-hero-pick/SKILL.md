---
name: overwatch-5v5-hero-pick
description: >-
  Recommends which Overwatch hero to play in 5v5 Role Queue Competitive, based
  on the current map and the enemy team composition. Use this skill whenever
  the user asks what hero to pick, who to play, who counters a specific enemy
  hero, whether dive/brawl/poke is good on a given map, what to swap to
  mid-match, or describes any Overwatch match situation and wants a pick
  suggestion. Trigger it for casual phrasings too — "what should I play on
  King's Row", "who counters Pharah", "their team has a Winston and a Tracer,
  help", "is my pick good here", "what do I swap to", "any tips for this map" —
  and for any Overwatch hero-selection question even if the user does not
  explicitly say the word "recommend". Do NOT use this skill for non-Overwatch
  games, for Stadium or 6v6 Open Queue (different ability/role logic), or for
  Overwatch lore, news, or patch-history questions that are not about choosing
  a hero.
---

# Overwatch 5v5 Hero Pick

Recommend a hero to play in **5v5 Role Queue Competitive**. This skill does
NOT cover Stadium (separate mode with its own ability customization via
Stadium Powers, different counter logic) or 6v6 Open Queue (different role
balance). If the user asks about either of those modes, say so up front.

Inputs arrive in stages and are often incomplete — work with whatever the
user gives, and never block on missing information.

The two inputs, in priority order:
1. **Map** — narrows the archetype (Dive / Brawl / Poke / Flex).
2. **Enemy composition** — drives counter-picking. Often partial ("their tank
   is Winston") — that's fine, partial info still produces a useful answer.

All game data lives in `references/knowledge-base.md`. Read it whenever this
skill triggers — it holds the roster, the map archetype table, the counter
matrix, the archetype classification, and the current tier list.

## Step 0 — Freshness check

The knowledge base has a "Valid as of" date and a "Last balance patch" date at
the top. Overwatch balance shifts every patch and the meta turns over fast.

- If today's date is within ~3 weeks of the "Valid as of" date AND no new
  season has started, use the knowledge base as-is.
- Otherwise, do ONE quick web search (e.g. "Overwatch latest patch notes",
  "Overwatch current season") to catch changes, reconcile anything that
  conflicts with the knowledge base, and tell the user the data may be stale.
- Either way, if the recommendation hinges on a hero flagged "volatile" in the
  knowledge base, add a brief note that their balance is in flux.
- **Source priority when verifying abilities or mechanics:** prefer official
  Blizzard patch notes (overwatch.blizzard.com/news/patch-notes) and the
  Blizzard hero pages. Community wikis (Fandom, Dexerto, etc.) often lag
  months behind on reworks. Never use Stadium Powers as evidence of a base
  ability's current state — Stadium is a separate mode.

## Step 1 — Read the situation

Identify what the user has provided:
- **Map** (or just a game mode, or nothing).
- **Enemy heroes** — any number, any role. Note especially the enemy tank, the
  enemy hitscan DPS, and how many mobile/dive heroes they have.
- **Role** the user wants to play, if stated. If not, recommend across roles
  but lead with the role that most changes the outcome.
- **Their current pick**, if this is a mid-match "should I swap" question.

If the user gave essentially nothing actionable, ask one short question (map?
enemy tank?) rather than guessing.

## Step 2 — Map → archetype lean (pre-game)

Look the map up in the knowledge base's map archetype table. State the map's
primary archetype and what it rewards in one sentence. If the user only has
the map, this is the whole answer: recommend 2–3 heroes that fit the
archetype, spread across roles, and note it will sharpen once the enemy comp
is known.

If the map is unknown but the mode is given, give a softer mode-level lean and
say a specific map would tighten it.

## Step 3 — Enemy comp → counter layer

When enemy heroes are known, use the counter matrix. The counter layer
**overrides** the map lean where they conflict — counters win.

Weighting, highest first:
- **Enemy tank** — the single biggest factor; one tank is one point of failure.
- **Enemy hitscan DPS** — decides whether dive is viable (lots of hitscan =
  dive struggles).
- **Enemy mobility count** — decides whether brawl can pin them down.

Pick the hero that counters the most of what's hurting the user, while still
being reasonable on the map. Briefly say *why* it counters (the mechanic —
e.g. "Zarya's beam ignores D.Va's Defense Matrix").

## Step 4 — Ban awareness

Competitive removes up to 4 heroes per match, and 5–6 strong heroes are
routinely targeted (see the knowledge base). So always give a **primary pick
plus a fallback** that survives bans — if the primary is a common ban target,
the fallback is hit roughly half the time.

## Output format

Keep it tight and scannable — this may be read on a respawn timer. Use this
shape, trimming any section that doesn't apply:

```
Map: <map> — <archetype>, <one-line what it rewards>
Enemy read: <the 1–2 things that actually matter>

Primary: <hero> — <one-line why>
Fallback (if banned): <hero> — <one-line why>

Note: <freshness / volatility caveat, only if relevant>
```

For a pure "who counters X" question, drop the map framing and just answer the
matchup directly, still with a primary + fallback.

## Examples

**Pre-game, map only**
Input: "What should I play on Circuit Royal?"
Output: Circuit Royal is a Poke map — long sightlines, defender high ground.
Lead with a hitscan DPS (Ashe or Sojourn), a Poke tank (Sigma), and Baptiste
or Ana on support. This sharpens once their comp is known.

**Mid-match, partial comp**
Input: "Their tank is Winston and they have a Tracer wrecking us. King's Row."
Output: King's Row is Brawl, which already fights Winston dive. Primary on
tank: Reinhardt or Zarya (brawl bullies dive; Zarya bubbles the Tracer-focused
ally). On DPS, Reaper shreds Winston's bubble and threatens Tracer. Brigitte
hard-counters both. Fallback if Reaper is banned: Mei.

**Pure counter question**
Input: "Who counters Pharah?"
Output: Hitscan is the answer — Soldier: 76, Cassidy, or Ashe to contest her
in the air; Baptiste can also out-sustain and shoot her down. Primary: Ashe
(burst + Coach Gun disrupts her). Fallback: Soldier: 76.
