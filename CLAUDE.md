# CLAUDE.md — jinks.pro

Project instructions for Claude Code (iOS mobile app, web `claude.ai/code`, and CLI) and Antigravity. Read automatically at session start.

---

## 📱 Current Active Task: [`docs/26refresh.md`](docs/26refresh.md)

**Start here:** Read [`docs/26refresh.md`](docs/26refresh.md) first. It contains the full, phase-by-phase UI & copy refresh plan, project inventory (`adamjinks` + `EchoNin9` + `adamjinks.com` blog posts), and Hallmark redesign checklist.

### Mobile / Travel Mode (Autonomous Execution)
Adam is traveling and driving this project from his phone:
1. **Do not block on unnecessary questions.** Make sensible, high-craft decisions aligned with [`docs/26refresh.md`](docs/26refresh.md), log decisions directly in `docs/26refresh.md`, and keep moving.
2. **Check off `[x]` items in `docs/26refresh.md` as you complete each step** and push checkpoints frequently so Adam can monitor progress and view the live mobile preview on his phone at **`https://jinks.pro/preview/`**.
3. **All UI/design skills are pre-installed in `.claude/skills/`** (and synced to `~/.agents/skills/` via `.claude/hooks/session-start.sh` on remote web/iOS sessions):
   - `.claude/skills/hallmark` — Primary redesign engine (`/hallmark redesign .`)
   - `.claude/skills/impeccable` — Post-build critique & polish (`polish`, `bolder`, `critique`, `audit`)
   - `.claude/skills/apple-design` — Optical alignment, surface hierarchy, restraint
   - `.claude/skills/emil-design-eng` — Interaction states & invisible UI details
   - `.claude/skills/animation-vocabulary` — Choreographed reveals & motion curves
   - `.claude/skills/web-design-guidelines` — Vercel web interface compliance
   - `.claude/skills/frontend-design` — Typography and visual direction
   - `.claude/skills/agent-delegate` — Lead/sidekick delegation protocol

---

## 🚀 Branch, Preview & Deploy Policy — READ FIRST

| Branch | Deploys To | Who Merges / Pushes |
| :--- | :--- | :--- |
| **`main`** | **`https://jinks.pro/`** (Production apex) | Promoted only after `preview` verification |
| **`preview`** | **`https://jinks.pro/preview/`** (Live mobile staging) | Agents & Adam freely |
| **`claude/*`** | **`https://jinks.pro/preview/`** (Auto-builds on push & merges to `preview`) | Claude iOS / Web sessions |

### Rules for Agents
1. **Never push website changes (`index.html`, `styles.css`, `script.js`) directly to `main`.**
2. Do all implementation work on `preview` (or your `claude/*` session branch, then merge into `preview` and push `origin/preview`).
3. Every push to `preview` or `claude/**` automatically triggers `.github/workflows/deploy.yml`, which keeps **`https://jinks.pro/`** pinned to production `origin/main` while publishing the latest preview build to **`https://jinks.pro/preview/`** so Adam can inspect it on his phone in Safari/Chrome.
4. **Stop at `preview` for final review** unless Adam explicitly says *"promote to main"* or *"deploy to prod"*.

---

## 🤝 `/delegate` — Lead/Sidekick Delegation Protocol

On any non-trivial multi-step implementation, apply the Lead/Sidekick Delegation Protocol (`.claude/skills/agent-delegate/SKILL.md`):
- **You are the Lead** (Opus / Default). Spawn **Sonnet** (`model: sonnet` in Claude Task tool) or **flash** (`invoke_subagent` in Antigravity) sidekicks for exploration, section builds, and verification sweeps.
- **Briefs, not dictation:** State constraints, Hallmark Floor rules, edge cases, and definition of done.
- **Review cheaply** via `git diff` / `git status` and `node .claude/skills/hallmark/scripts/sloplint.mjs index.html styles.css`.
