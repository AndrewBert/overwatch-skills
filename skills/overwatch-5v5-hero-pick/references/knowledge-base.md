# Overwatch Hero-Selection Knowledge Base

**Valid as of:** May 25, 2026
**Game state:** Reign of Talon — Season 2: "Summit"
**Scope:** 5v5 Role Queue Competitive. Does NOT apply to Stadium (different abilities via Stadium Powers, different counter logic) or 6v6 Open Queue (different role balance — see caveats).
**Last balance patch reflected:** May 12, 2026 (mid-season); minor hotfixes shipped May 13, 14, and 21 — not yet incorporated
**Season 2 ends:** ~June 16, 2026

> This file is the data layer for hero recommendations. If today's date is
> well past the "valid as of" date (roughly 3+ weeks) or a new season has
> started, treat tier/counter data as potentially stale — see the freshness
> step in SKILL.md.

## Table of contents
1. Hero roster (by role + sub-role)
2. Map archetype table
3. Archetype classification (which heroes fit Dive / Brawl / Poke / Flex)
4. Counter matrix (enemy hero → what beats them)
5. Current tier list (post May 12, 2026)
6. Sub-role passives
7. Hero Bans system
8. Matchup-shifting perks
9. Known caveats

---

## 1. Hero roster — 51 heroes

**Tanks (14):** D.Va, Domina, Doomfist, Hazard, Junker Queen, Mauga, Orisa,
Ramattra, Reinhardt, Roadhog, Sigma, Winston, Wrecking Ball, Zarya.

**Damage (23):** Anran, Ashe, Bastion, Cassidy, Echo, Emre, Freja, Genji,
Hanzo, Junkrat, Mei, Pharah, Reaper, Sierra, Sojourn, Soldier: 76, Sombra,
Symmetra, Torbjörn, Tracer, Vendetta, Venture, Widowmaker.

**Support (14):** Ana, Baptiste, Brigitte, Illari, Jetpack Cat, Juno, Kiriko,
Lifeweaver, Lúcio, Mercy, Mizuki, Moira, Wuyang, Zenyatta.

**Newer / still volatile (heavy balance churn — flag uncertainty):** Domina,
Emre, Anran, Mizuki, Jetpack Cat (all added in 2026), and Sierra (added
April 14, 2026 — the most recent hero).

---

## 2. Map archetype table

Game *mode* is a weak predictor of optimal composition; *archetype* is the
strong one. Use this table for the map (Stage 1) recommendation.

| Map | Mode | Primary | Secondary | Key trait |
|---|---|---|---|---|
| Circuit Royal | Escort | Poke | — | Long avenues, defender high ground; canonical Widow map |
| Havana | Escort | Poke | Brawl | Open A & C plazas; B distillery is brawl |
| Junkertown | Escort | Poke | — | Famously open Point A; C has high-ground platform |
| Watchpoint: Gibraltar | Escort | Poke | Flex | Widened sightlines reward hitscan |
| Dorado | Escort | Flex | — | A is poke, C is brawl |
| Route 66 | Escort | Flex | — | Mid-range; balanced comps |
| Rialto | Escort | Flex | — | Each point favors a different style |
| Shambali Monastery | Escort | Flex | — | Tunnels brawl, courtyards poke |
| King's Row | Hybrid | Brawl | — | Close streets, iconic first choke |
| Eichenwalde | Hybrid | Brawl | — | Castle interior is pure brawl |
| Hollywood | Hybrid | Brawl | Poke | Indoor first point; opens up later |
| Paraíso | Hybrid | Brawl | — | Funnels into brawl chokes |
| Midtown | Hybrid | Brawl | — | Subways and corners favor close fights |
| Numbani | Hybrid | Dive | — | Multi-level; Echo/Genji excel |
| Blizzard World | Hybrid | Dive | Brawl | Lots of verticality and flank routes |
| Antarctic Peninsula | Control | Brawl | — | Reworked S2; tight rooms (provisional) |
| Busan | Control | Flex | — | Point-dependent; Downtown is sniper-friendly |
| Ilios | Control | Dive | Poke | Pits, verticality, flank angles |
| Lijiang Tower | Control | Dive | Brawl | Garden/Control Center dive-friendly |
| Nepal | Control | Dive | — | Sanctum pit + high ground |
| Oasis | Control | Dive | Brawl | University brawl; Gardens/City dive |
| Samoa | Control | Flex | — | Heavily point-dependent |
| Colosseo | Push | Poke | — | Long sightlines; mid-range DPS + Sigma |
| Esperança | Push | Poke | Dive | Mid/long lanes; Pharah/Echo strong |
| New Queen Street | Push | Dive | Flex | Open streets + indoor flank routes |
| Runasapi | Push | Flex | — | Favors flex DPS |
| Aatlis | Flashpoint | Poke | — | Huge map; rotational poke, Pharah/Echo |
| New Junk City | Flashpoint | Poke | Flex | Large; long lanes |
| Suravasa | Flashpoint | Poke | — | Largest maps; Pharah/Echo dominant |

Clash maps (Hanaoka, Throne of Anubis) are **not in Competitive** — Custom
Games / Stadium only.

---

## 3. Archetype classification

Recommend heroes whose archetype matches the map's primary (or secondary).

**DIVE** — fast, vertical, picks off backline.
- Tank: D.Va, Winston, Wrecking Ball, Doomfist
- DPS: Tracer, Genji, Sombra, Echo, Venture, Vendetta, Sierra
- Support: Lúcio, Kiriko, Juno, Jetpack Cat

**BRAWL (Rush)** — close-range, sustained, group up and push.
- Tank: Reinhardt, Junker Queen, Zarya, Mauga, Ramattra, Hazard, Roadhog, Orisa
- DPS: Reaper, Mei, Bastion, Symmetra, Torbjörn, Junkrat, Cassidy, Soldier: 76, Anran
- Support: Brigitte, Moira, Lifeweaver, Mizuki

**POKE / SPAM** — long-range, chip damage, hold space.
- Tank: Sigma, Domina, Orisa, Mauga, Roadhog
- DPS: Sojourn, Hanzo, Soldier: 76, Ashe, Pharah, Widowmaker, Mei, Cassidy, Freja, Emre, Sierra
- Support: Ana, Baptiste, Zenyatta, Illari, Wuyang

**FLEX** — slots into 2+ comps; safe defaults when unsure.
- Tank: D.Va, Zarya, Domina, Orisa
- DPS: Cassidy, Soldier: 76, Echo, Pharah, Mei, Vendetta, Reaper, Sierra
- Support: Lúcio, Kiriko, Juno, Ana, Baptiste, Mercy

---

## 4. Counter matrix — enemy hero → what beats them

Indexed by *enemy* hero, since the common query is "they have X, what do I pick."

### Enemy tanks
- **D.Va** → Zarya (beam ignores Defense Matrix, bubble feeds her energy),
  Reinhardt (Charge pins through Matrix), Illari at range; soft: Sojourn burst (Railgun secondary punches through Matrix windows).
- **Domina** → D.Va and Reinhardt (aggressive heroes close the gap),
  Hazard at melee, Sombra (EMP destroys Barrier Array; hack locks out redeploy for ~1s).
  (Extended Power and Power Move both shift this — see §8.)
- **Sigma** → Baptiste (Amp Matrix doubles damage through barrier), Mei (Ice Wall),
  Vendetta if she reaches him.
- **Reinhardt** → Pharah/Echo (out of range), Sombra (hack locks barrier deploy for ~1s; EMP destroys it),
  Bastion/Junkrat (shield melt).
- **Winston** → Reaper, Mei, Brigitte, Symmetra (short-range DPS chews him and his bubble at point-blank).
- **Zarya** → Hanzo, Widowmaker (out of beam range), Cassidy (Flashbang Hinder up close), Ana (Sleep Dart shuts down Grav follow-up; anti-nade denies healing during her dives — note: anti-nade does NOT block her energy gain).
- **Ramattra** → Reaper, Roadhog (tankbusters), Tracer/Pharah/Genji (kite the melee).
  (Nanite Repair softens the tankbust counter — see §8.)
- **Junker Queen** → Ana (anti-nade strips her Wound sustain).
  (Savage Satiation bypasses this — Carnage lifesteal isn't healing; see §8.)
- **Roadhog** → Ana (Biotic Grenade blocks Take a Breather's healing, but the 40% damage reduction still applies), Junker Queen (Rampage anti-heal also blocks the healing); Junkrat, Reaper.
  (Pulled Pork's Hook-overhealth bypasses both anti-heals; Shrapnel Launcher extends his range — see §8.)
- **Hazard** → Sigma/Domina (out-range), Reinhardt and Zarya in brawl.
- **Mauga** → Ana (Biotic Grenade blocks Cardiac Overdrive's lifesteal healing, but the damage reduction still applies), Junker Queen (Rampage anti-heal likewise blocks the healing but not the DR), Sombra (hack locks abilities and interrupts a Cardiac Overdrive cast, but does not strip an already-active one), Zarya (bubble eats Chain Gun and feeds energy fast).
  (Combat Fuel's crit-built overhealth on Cardiac bypasses both anti-heals — see §8.)
- **Orisa** → Sombra, Reaper, Mei; sustained focus from range.
- **Wrecking Ball** → Sombra (hack drops him out of roll), Ana (Sleep), Reaper.
  (Adaptive Barrier blocks Sleep Dart — see §8.)
- **Doomfist** → Sombra, Ana (Sleep), Cassidy (Flashbang Hinder interrupts Slam/Punch combos), Orisa (Fortify denies combos).
  (Cassidy's Bang Bang adds a second Flashbang at longer range — see §8.)

### Enemy DPS
- **Vendetta** → Cassidy (Flashbang Hinder locks out Whirlwind Dash and Soaring Slice), Bastion, Sigma (Accretion
  knockdown), Pharah/Echo (fly out of melee), Jetpack Cat (Frenetic Flight burst + Catnapper reposition), Brigitte, Ana (Sleep).
  (Cassidy's Bang Bang lets Hinder reapply mid-combo — see §8.)
- **Tracer** → auto-aim/short-range: Moira, Winston, Torbjörn; Symmetra (short-range ramp beam, manual aim); Brigitte; Mei.
  (Torbjörn's Anchor Bolts and Mei's Deep Freeze sharpen this — see §8.)
- **Sojourn** → Lúcio/Genji/Tracer (outmaneuver), dive tanks force her defensive. (Genji CAN deflect Railgun primary — it's a projectile — but the charged secondary pierces and isn't a standard deflect target.)
  (Deceleration Field slows flankers and Dual Thrusters adds an extra Slide — see §8.)
- **Sierra** → Soldier/Cassidy/Ashe (out-duel her at mid-range), Ana (Sleep), Genji/Tracer/Sombra (dive). D.Va/Sigma/Zarya can eat Tremor Charge (projectile) but NOT Helix Rifle (hitscan); Kiriko Suzu cleanses the Tracking Shot mark.
- **Emre** → Pharah/Echo (out of range), Sombra (hack), Ana (Sleep). (Genji deflect does NOT work on Synthetic Burst Rifle — it's hitscan — but Cyber Frag IS a deflectable projectile.)
- **Anran** → Kiriko (Suzu cleanses the Ignition burn); Mei Cryo / Reaper Wraith (invuln negates ticks during, but burn persists after — NOT a true cleanse); Zarya bubble blocks new ticks while up; flyers avoid engages.
- **Pharah** → hitscan: Soldier, Cassidy, Ashe, Widowmaker, Baptiste, Sierra.
- **Reaper** → Pharah/Echo/Widowmaker/Junkrat (out of range), Zarya bubble.
  (Trigger Finger lets him keep Dire Triggers up long-range — see §8.)
- **Bastion** → Reinhardt (block sightlines), dive (force reposition), D.Va Defense Matrix (eats Assault bullets and A-36 grenade). (Genji deflect does NOT work on Recon/Assault — both hitscan; A-36 Grenade AND Configuration: Artillery shells are deflectable projectiles. Note: Lindholm Explosives flips Assault to explosive shells — deflectable + Matrix-eatable; see §8.)
- **Widowmaker** → Genji/Tracer/Sombra (dive), Vendetta (flank). (Widow's Kiss is hitscan — Genji can't deflect her shots, only dive her.)
  (Seeker Mine adds active anti-flank within 10m — see §8.)
- **Sombra** → Pharah/Junkrat (AoE reveal), Hanzo (Sonic Arrow), Mei, Kiriko (Suzu invuln blocks Virus damage on ally; note: no longer cleanses hack post-May 12, 2026).
- **Junkrat** → Pharah/Echo (vertical), Widowmaker/Ashe (range).
- **Genji** → Mei (primary spray slows him and isn't a deflectable projectile), Brigitte, Winston (bubble).
  (Mei's Deep Freeze upgrades the slow into a hard freeze — see §8.)
- **Echo** → hitscan (Soldier, Ashe, Cassidy, Sierra), Sombra (hack mid-flight).
- **Hanzo / Soldier: 76 / Cassidy / Ashe** → dive pressure forces them off angles.
- **Freja** → hitscan: Soldier, Cassidy, Ashe, Widowmaker, Sierra, Baptiste
  (her Updraft window has no defensive ability and no self-heal in base
  kit). Genji deflect on Bola Shot and Take Aim (both projectile). D.Va
  Defense Matrix eats both. Ana (Sleep — no cleanse, no invuln in base
  kit). Ground-side dive (Tracer/Sombra) since she has no peel.
  (Aerial Recovery adds self-heal during Updraft — see §8.)
- **Venture** → Ana (Sleep on emerge — Burrow grants brief invuln, so time
  the Sleep just after they pop), Sombra (hack post-Burrow), Mei (slow
  prevents Drill Dash escape; primary spray isn't deflectable), Brigitte /
  Reinhardt at melee (no self-heal or barrier in base kit), D.Va Defense
  Matrix on SMART Excavator (projectile). Hitscan punishes between Burrow
  windows.
  (SMART Extender doubles SMART Excavator range — see §8.)

### Enemy supports
- **Kiriko** → burst tracking (Sojourn, Soldier, Tracer); Sombra (hack stops Suzu).
  (Ready Step gives her a post-TP counter-attack window — see §8.)
- **Ana** → dive (D.Va, Tracer, Genji); Genji deflect on Sleep.
  (Headhunter lets her crit-duel hitscan dive at range — see §8.)
- **Lúcio** → hitscan + dive flankers punish him.
- **Mercy** → hitscan, Sombra (hack).
- **Illari** → dive eats her pylon and forces repositioning.
  (Rapid Construction shortens the repositioning window — see §8.)
- **Zenyatta** → dive (D.Va, Tracer, Winston).
  (Ascendance grants 3s hover on Double Jump — real mobility on a famously immobile hero; see §8.)
- **Baptiste** → dive pressure, especially when Immortality Field is on cooldown.
  (Rocket Boots add a horizontal air-dash — see §8.)
- **Jetpack Cat** → hitscan (Cassidy, Ashe, Soldier, Sierra); Mauga at close range.
- **Brigitte** → Pharah/Echo (out of range); Bastion melts her.
- **Mizuki** → dive and burst pressure (no ally invuln/cleanse); Sombra hack locks Kekkai Sanctuary and her chain.
- **Moira / Lifeweaver / Wuyang** → dive and burst pressure.

---

## 5. Current tier list (post May 12, 2026)

Cross-source consensus (Mobalytics, Dexerto, owherostats, Epiccarry).

**S-tier:** D.Va, Domina, Zarya (tank); Sojourn, Tracer, Emre, Vendetta,
Sierra (DPS); Kiriko, Lúcio (support).

**A-tier:** Sigma, Ramattra, Junker Queen, Mauga, Hazard; Ashe, Cassidy,
Reaper, Genji, Pharah, Echo, Soldier: 76, Anran; Ana, Baptiste, Juno, Mercy,
Illari, Zenyatta.

**B-tier:** Roadhog, Winston, Orisa, Wrecking Ball, Doomfist; Hanzo,
Widowmaker, Bastion, Symmetra, Mei, Torbjörn, Freja, Venture; Brigitte,
Mizuki, Wuyang, Moira.

**C-tier / niche:** Reinhardt; Junkrat; Lifeweaver.

**Comp archetype standing (5v5 Role Queue):** Dive is the strongest
coordinated comp; Poke is the reliable ladder default; Brawl is third but
got a small lift from the May 12 Junker Queen buff. (Brawl is notably
stronger in 6v6 Open Queue.)

**May 12, 2026 patch — meta movers:** buffs to Junker Queen, Freja, Baptiste,
Mercy; nerfs to D.Va, Emre, Pharah, Illari, Vendetta, Kiriko (Suzu cleanse-heal
removed and Suzu effect changed from "phased out" to "invulnerable" —
allies still take no damage but can now be knocked back/hooked/displaced),
Lúcio (Sound Barrier overhealth 750→625, duration 6s→5s); Mizuki (Kekkai Sanctuary now absorbs entering+exiting projectiles; healing 50→40/s, duration 7s→6s — net neutral). Initiator passive no longer triggers
while airborne and its healing dropped 60→50.

---

## 6. Sub-role passives

Sub-roles are sticky per hero and give distinct buffs — they matter for
recommendations because they changed hero behavior versus pre-2026 guides.

- **Tank** — Stalwart (knockback/slow resistance): Domina, Junker
  Queen, Ramattra, Reinhardt, Sigma. Initiator (heal off movement abilities;
  nerfed May 12): D.Va, Doomfist, Hazard, Winston, Wrecking Ball. Bruiser (crit-damage
  reduction + low-HP speed): Mauga, Orisa, Roadhog, Zarya.
- **Damage** — Sharpshooter: Ashe, Cassidy, Hanzo, Sojourn, Widowmaker.
  Flanker: Anran, Genji, Reaper, Tracer, Vendetta, Venture. Specialist:
  Bastion, Emre, Junkrat, Mei, Soldier: 76, Symmetra, Torbjörn. Recon: Echo,
  Freja, Pharah, Sierra, Sombra.
- **Support** — Tactician (bonus ult charge past 100%): Ana, Baptiste, Jetpack
  Cat, Lúcio, Zenyatta. Medic (self-heal on healing): Kiriko, Lifeweaver,
  Mercy, Moira. Survivor (heal-over-time on movement): Brigitte, Illari, Juno,
  Mizuki, Wuyang.

---

## 7. Hero Bans

Hero Bans are live in all Competitive ranks. Each match removes up to 4 heroes
(2 per team) via a ban-vote phase. Most-banned heroes right now: **D.Va**
(~23% ban rate, highest in game), Vendetta, Sojourn, Kiriko, Sierra.

Implication for recommendations: with only 4 ban slots but 5–6 heroes
routinely targeted, an S-tier pick is unavailable in roughly half of matches —
so every recommendation should include a fallback that survives bans.

---

## 8. Matchup-shifting perks

Perks are mid-match upgrades — Lvl 2 Minor (unlocked first) and Lvl 3 Major
(unlocked second) — introduced in Season 15. Only perks that change an entry
in the counter matrix (§4) or shift archetype fit (§3) are listed here.
Pure stat boosts, cooldown reductions without a behavior change, sustain
perks that don't flip a named counter, and finisher mechanics are omitted.

All perk wording is taken verbatim from the live Blizzard hero page
(`overwatch.blizzard.com/en-us/heroes/<hero>/`) as of the "Valid as of" date
at the top of this file. Perks reshuffle between seasons — re-verify against
the hero page if anything looks off.

### Tank perks that shift matchups
- **Domina — Extended Power** (Minor): "Increase the range of Photon Magnum
  by 20%." → makes the "D.Va/Reinhardt close the gap" counter harder.
- **Domina — Disruptive Detonation** (Major): "Enemies hit by Crystal
  Charge's explosion are slowed by 30% for 2 seconds." → softens her
  dive-close counters by slowing approaches.
- **Domina — Power Move** (Major): "Barrier Array can be used as a wall to
  stun enemies with Sonic Repulsors with a 100% damage increase." → contests
  the "Sombra EMP destroys Barrier Array" counter by adding a stun on use.
- **Ramattra — Nanite Repair** (Major): "Ramattra is healed for 75 health
  per second while within Ravenous Vortex." → blunts the "Reaper/Roadhog
  tankbust" counter when he sustains in his own Vortex.
- **Junker Queen — Savage Satiation** (Major): "Carnage's impact damage gains
  100% lifesteal." → bypasses "Ana anti-nade strips her Wound sustain"
  because lifesteal is direct damage-to-self-heal, not a healing buff.
- **Mauga — Combat Fuel** (Major): "Critical hits grant Mauga 3 temporary
  overhealth on Cardiac Overdrive's next use, up to 150." → bypasses both
  "Ana anti-nade blocks Cardiac healing" and "JQ Rampage anti-heal" rows
  because overhealth isn't healing.
- **Roadhog — Shrapnel Launcher** (Minor): "Extend the range of Scrap Gun's
  secondary fire by 50% and tighten its burst spread by 25%." → reduces the
  kite window that the "Ramattra → Tracer/Pharah/Genji kite the melee"
  archetype counter relies on.
- **Roadhog — Pulled Pork** (Major): "Gain overhealth based on how far you
  pull enemies with Chain Hook, up to 300." → bypasses BOTH "Ana anti-nade
  blocks Take a Breather" and "JQ Rampage anti-heal" rows; overhealth from
  Hook isn't healing.
- **Wrecking Ball — Adaptive Barrier** (Major): "Adaptive Shield generates
  a 1.5 second barrier on activation." → blocks the Sleep Dart projectile
  that's the named "Ball → Ana Sleep" counter.

### Damage perks that shift matchups
- **Reaper — Trigger Finger** (Major): "Refresh Dire Triggers' cooldown
  whenever using an ability or reloading." → keeps Reaper's long-range
  secondary up nearly continuously, weakening the "Reaper → Pharah/Echo/
  Widow out of range" row.
- **Sojourn — Deceleration Field** (Minor): "Enemies hit by Disruptor Shot
  are slowed by 25%." → catches the "Lúcio/Genji/Tracer outmaneuver"
  flankers her row lists.
- **Sojourn — Dual Thrusters** (Major): "Power Slide gains an additional
  charge and its jump height shifts to lateral movement." → mobility-class
  shift; dive tanks have a much harder time pinning her.
- **Cassidy — Bang Bang** (Minor): "Cassidy throws a second Flashbang that
  travels farther, but both Flashbangs deal 40% reduced damage." → re-
  applicable Hinder strengthens the Zarya, Doomfist, and Vendetta rows that
  all cite Flashbang Hinder as the counter mechanic.
- **Bastion — Lindholm Explosives** (Major): "Configuration: Assault's
  weapon slowly fires explosive shells instead of a rotary cannon." → flips
  Assault from hitscan to projectile: Genji CAN now deflect it, and D.Va
  Defense Matrix CAN now eat it. Directly contradicts the parenthetical in
  the Bastion row of §4.
- **Mei — Deep Freeze** (Major): "Continuously hitting enemies with primary
  fire freezes them for a short time." → upgrades the named "Mei's primary
  spray slows Genji" interaction into a hard CC; also strengthens her
  Winston, Orisa, and Sombra counter rows.
- **Torbjörn — Anchor Bolts** (Major): "Deploy Turret's throw range is
  increased by 50% and it can now attach to walls and ceilings." → changes
  the "Tracer → Torbjörn" turret-vs-flank geometry; wall-mounted turrets
  are far harder to navigate around.
- **Widowmaker — Seeker Mine** (Major): "Venom Mine now fires poison darts
  at enemies within 10 meters and remains active after triggered." → adds
  active anti-flank to her "Genji/Tracer/Sombra dive, Vendetta flank" row.
- **Freja — Aerial Recovery** (Major): "After using Updraft, heal for 30
  health per second until Freja touches the ground." → adds self-heal
  during the exact window the hitscan counter exploits; weakens "Freja →
  hitscan" significantly.
- **Venture — SMART Extender** (Major): "Empower SMART Excavator with E to
  increase its maximum projectile range by 100%." → doubles their primary
  reach, pushing the "hitscan punishes between Burrow windows" calculus
  back at the hitscan duelists.

### Support perks that shift matchups
- **Ana — Biotic Bounce** (Major): "After exploding, Biotic Grenade bounces
  and explodes again for 60 damage and healing." → second anti-heal
  explosion reinforces her named counter on Roadhog, Mauga, and Junker
  Queen.
- **Ana — Headhunter** (Major): "Biotic Rifle can crit enemies." → extends
  her threat at range; softens "Ana → dive (D.Va/Tracer/Genji)" because she
  can now crit-duel hitscan dive heroes.
- **Kiriko — Ready Step** (Major): "Swift Step grants Kiriko 40% increased
  attack and reload speed for 3 seconds." → fights back vs the "burst
  tracking" counter — a 3-second burst window on the same TP that used to
  be pure escape.
- **Illari — Rapid Construction** (Minor): "Healing Pylon builds 300%
  faster and its cooldown is reduced by 1.5 seconds." → shortens the
  repositioning window that the "Illari → dive eats her pylon" counter
  depends on.
- **Baptiste — Rocket Boots** (Major): "While airborne from Exo Boots, use
  SPACE to dash horizontally." → mobility-class shift; harder to dive when
  Immortality Field is on cooldown.
- **Zenyatta — Ascendance** (Minor): "Activate and hold Double Jump to
  hover for up to 3 seconds." → mobility-class shift on a hero whose
  "Zen → dive (D.Va/Tracer/Winston)" counter relies on his immobility.

---

## 9. Known caveats

- Map archetype labels are community/coaching consensus, not official — edge
  cases are debatable (e.g. Rialto Point B leans more Brawl than "Flex").
- Antarctic Peninsula's "Brawl" label is provisional pending post-rework consensus.
- Sierra is volatile (launched undertuned, emergency-buffed April 17); re-check her placement.
- The five 2026 Season 1 heroes (Domina, Emre, Anran, Mizuki, Jetpack Cat)
  remain balance-volatile.
- All tier/archetype data assumes 5v5 Role Queue. 6v6 Open Queue balance
  differs — brawl is stronger there.
- Stadium is a separate mode with its own ability set (Stadium Powers
  customize base abilities), economy, and round structure. None of this
  knowledge base — counters, tier list, archetypes, ability descriptions —
  applies to Stadium. Do not use Stadium Powers as evidence of base ability
  state when verifying KB entries.
- **Perks: partial coverage.** §8 lists perks that change a counter matchup
  or shift archetype fit. Pure stat-boost perks, cooldown reductions without
  behavior change, sustain perks that don't flip a named counter, and
  finisher mechanics are omitted by design — they don't change which hero
  you pick. A fuller perk-aware refresh, including a "what perk should I
  take?" recommendation flow in SKILL.md, is planned alongside the Season 3
  update (post June 16, 2026). Re-verify perk wording against the live
  Blizzard hero page if the patch date drifts — perks reshuffle between
  seasons.
- Blizzard's official hero-stats page shows *normalized* percentages, not raw
  pick/win rates — don't treat those numbers as probabilities.
