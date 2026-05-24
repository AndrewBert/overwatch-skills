# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this repo is

A collection of [Agent Skills](https://agentskills.io) — structured prompt + data bundles that work across Claude Code, Cursor, OpenAI Codex, GitHub Copilot, and 50+ other agents. The only skill currently present is `overwatch-5v5-hero-pick`.

There is no build system, no package manager, and no test runner. All content is Markdown.

## Skill structure

Each skill lives under `skills/<skill-name>/` and contains:

- **`SKILL.md`** — the skill itself: a YAML frontmatter block (name, description, trigger conditions) followed by the prompt logic the agent follows at runtime. This is what gets installed into the agent.
- **`references/knowledge-base.md`** — the data layer the skill reads at runtime: hero roster, map archetype table, counter matrix, tier list, sub-role passives, bans. Updated per Overwatch patch.
- **`README.md`** — user-facing install and usage docs for the skill.

## Installing skills (for users)

```bash
# Install all skills from this repo globally
npx skills add AndrewBert/overwatch-skills -g

# Install a single skill
npx skills add AndrewBert/overwatch-skills -g --skill overwatch-5v5-hero-pick

# Target a specific agent
npx skills add AndrewBert/overwatch-skills -g -a claude-code

# Update after a patch
npx skills update overwatch-5v5-hero-pick
```

Manual install: copy the skill directory into the agent's skills folder (e.g. `~/.claude/skills/` for Claude Code).

## Knowledge base maintenance

The `knowledge-base.md` has a **"Valid as of"** date at the top. The skill checks this date at runtime and may do a live web search if it's stale. When updating after an Overwatch patch:

1. Update the "Valid as of" date and "Last balance patch reflected" line.
2. Update the "Game state" line (season name/number).
3. Edit only the affected sections — roster, tier list, counter matrix, or map table.
4. Include a PR checklist entry: summary, source link, patch version, confirmed 5v5 Role Queue.

**Sources — only these are accepted for ability/counter/mechanic claims:**
- Official Blizzard hero pages: `overwatch.blizzard.com/en-us/heroes/<hero>/`
- Official patch notes: `overwatch.blizzard.com/en-us/news/patch-notes/`

**Never use as sources for mechanics:** Fandom wiki, Stadium Powers, 6v6 Open Queue data, YouTube/Reddit/streamer claims. Third-party stat sites (Overbuff, owherostats) are OK for tier placement and pick rates only.

## Scope boundary (important)

This skill is **5v5 Role Queue Competitive only**. Stadium is a separate mode with per-hero ability customization via Stadium Powers — its counter logic does not apply here. 6v6 Open Queue has different role balance. Do not let Stadium or 6v6 data contaminate the knowledge base.

## Adding a new skill

Create `skills/<new-skill-name>/` with at minimum `SKILL.md` (with valid frontmatter) and `README.md`. Follow the existing skill as a template for the frontmatter schema.
