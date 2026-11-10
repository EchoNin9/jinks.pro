# `jinks.pro` 2026 UI & Copy Refresh Plan (`26refresh`)

> **Positioning Goal:** Purely all-business executive & principal engineering credibility (20+ years leading enterprise cloud strategy, security governance, and DevOps transformation), while retaining Adam's approachable, casual, builder-first voice ("I build systems that stay up", "happy to talk shop").
>
> **Primary Design Engine:** `hallmark` (`/hallmark redesign .`)  
> **Polish & Verification Stack:** `apple-design`, `emil-design-eng`, `animation-vocabulary`, `impeccable`, `web-design-guidelines`, `modern-web-guidance`, `a11y-debugging`, `debug-optimize-lcp`

---

## 📱 Working From Your Phone (Travel Quickstart)

Everything you need to run and review this overhaul from your phone is now committed to the repository:

1. **Open a session from your phone** in the **Claude iOS app** (or **`claude.ai/code`** in mobile Safari/Chrome) on repository **`EchoNin9/jinks.pro`**.
2. **Send a one-line prompt:**
   > `Follow docs/26refresh.md and execute Phases 1–4 on preview.`
3. **How it works behind the scenes on mobile:**
   - [`CLAUDE.md`](../CLAUDE.md) and [`.claude/hooks/session-start.sh`](../.claude/hooks/session-start.sh) run automatically when the cloud container starts (`CLAUDE_CODE_REMOTE="true"`).
   - All required UI skills (`hallmark`, `impeccable`, `apple-design`, `emil-design-eng`, `animation-vocabulary`, `web-design-guidelines`, `frontend-design`, `agent-delegate`) are bundled in [`.claude/skills/`](../.claude/skills/) and automatically linked into `~/.agents/skills/` and `~/.claude/skills/` in the remote container (with Hallmark's theme reference images hydrated on start).
4. **View your live preview on your phone without touching production:**
   - Every push to `preview` or a `claude/*` branch automatically deploys the staging site to **`https://jinks.pro/preview/`** while keeping production **`https://jinks.pro/`** safely pinned to `main`.
5. **Promote to production from your phone when satisfied:**
   - Either tell the agent: *"Merge preview into main and push"* or merge the PR in **GitHub Mobile**.

---

## Phase 0: Tooling, Global Skill Setup & Mobile Enablement

- [x] Verify top UI/UX and design engineering skills on `skills.sh` and GitHub (`gh api`).
- [x] Install `nutlope/hallmark` (`hallmark`) globally into `~/.agents/skills/hallmark`.
- [x] Install peer and complementary UI skills globally via `npx skills add <pkg> -g -y`:
  - [x] `pbakaus/impeccable@impeccable` (`impeccable` — post-build steering, `polish`, `bolder`, `critique`, `audit`)
  - [x] `emilkowalski/skills@apple-design` (`apple-design` — optical sizing, surface hierarchy, restraint)
  - [x] `emilkowalski/skills@emil-design-eng` (`emil-design-eng` — invisible UI details, interaction ergonomics)
  - [x] `emilkowalski/skills@animation-vocabulary` (`animation-vocabulary` — motion patterns & choreography)
  - [x] `vercel-labs/agent-skills@web-design-guidelines` (`web-design-guidelines` — Vercel interface compliance)
  - [x] `leonxlnx/taste-skill@design-taste-frontend` (`design-taste-frontend` — anti-slop reference & browser gate)
  - [x] `anthropics/skills@frontend-design` (`frontend-design` — Anthropic frontend design principles)
  - [x] `nextlevelbuilder/ui-ux-pro-max-skill@ui-ux-pro-max` (`ui-ux-pro-max` — palette/type intelligence)
- [x] Symlink `~/.agents/skills/*` across `~/.gemini/antigravity-cli/skills`, `~/.gemini/config/skills`, `~/.claude/skills`, `~/.cursor/skills`, and `~/.codex/skills`.
- [x] Audit current `jinks.pro` codebase (`index.html`, `styles.css`, `script.js`, `docs/WORKFLOW.md`) and catalog `adamjinks` + `EchoNin9` projects and `adamjinks.com` blog writeups.
- [x] **Phone / Travel Enablement:**
  - [x] Bundle `.claude/skills/*` (`hallmark`, `impeccable`, `apple-design`, `emil-design-eng`, `animation-vocabulary`, `web-design-guidelines`, `frontend-design`, `agent-delegate`) into the repo.
  - [x] Add `CLAUDE.md` (`AGENTS.md`) and `.claude/hooks/session-start.sh` so Claude iOS / `claude.ai/code` mobile sessions auto-load the skills and `docs/26refresh.md` instructions.
  - [x] Upgrade `.github/workflows/deploy.yml` and `.github/workflows/pr-preview.yml` so pushes to `preview` or `claude/**` publish a live phone-viewable staging site at **`https://jinks.pro/preview/`** while keeping **`https://jinks.pro/`** pinned to production `main`.

---

## Phase 1: Git Branching & Baseline Hygiene

> Per [`docs/WORKFLOW.md`](./WORKFLOW.md), **never commit website edits directly to `main`**. All development happens on `preview` (or a `claude/*` branch merged into `preview`) before promoting to `main`.

- [x] Checkout and sync the `preview` branch (`git checkout preview && git merge main`).
- [x] Audit existing assets in `assets/` (`adam-avatar1.png`, `github.svg`, `linkedin.svg`) and determine if any real product screenshots should be captured via Hallmark's `scripts/capture.mjs` from live properties (`funkedupshift.com`, `adamjinks.com`, `echo9.net`).
- [x] Remove the off-screen hidden SEO/ATS keyword-stuffing block in `index.html` (lines 174–178) and fold those domain terms naturally into visible semantic copy (architecture competencies, project ledger, and technical stack).

---

## Phase 2: Copy & Content Refresh (All-Business + Casual Authenticity)

### 2.1 Voice & Tone Guardrails
- **All-Business Substance:** Lead with concrete outcomes—blast-radius reduction, zero-downtime cutovers, multi-account AWS governance, single-table DynamoDB economics, and zero-trust guardrails.
- **Casual & Direct Delivery:** First-person, zero corporate buzzword salad, no invented metrics or fake testimonials (strict Hallmark Floor rule #8). Keep the approachable *"let's talk shop"* warmth.
- **Hallmark Copy Discipline:**
  - Hero headline ≤ 7 words (≤ 50 characters), one supporting sentence, and primary/secondary actions visible at `1280×800` without scrolling.
  - No uppercase tracked "eyebrow" labels (Hallmark Floor rule #9: sentence/lowercase labels in the body or label face, untracked).
  - No middle-dot-joined meta strings (`·`) or arrows (`→`) glued to link text (Hallmark Floor rule #10).

### 2.2 Refreshed Portfolio Structure: Enterprise Track Record + Live Systems Built

Split the work showcase into two clear, complementary lenses (or a unified architectural index/ledger):

#### A. Enterprise Leadership & Transformation (Proven Track Record)
- [x] **Enterprise Cloud Governance & Security (National Telecom)** — Directed an AWS multi-account security and governance overhaul: standardized RBAC, SCPs, and permission boundaries aligned with strict regulatory compliance across hundreds of accounts.
- [x] **Multi-Org AWS Cutover (Freedom Mobile Migration)** — Led the multi-organization AWS migration and networking/security cutover (Transit Gateway, VPN, routing, service dependencies) under a tight cutover window with zero unplanned outages.
- [x] **Platform & DevOps Enablement** — Mentored platform and product teams on IaC (`Terraform`, `OpenTofu`, `Sceptre`, `CloudFormation`) and CI/CD pipelines (`GitHub Actions`, `CodePipeline`, `Jenkins`), accelerating release velocity and cutting incident MTTR.

#### B. Production Systems & Open Engineering (`EchoNin9` & `adamjinks`)
*Framed around architectural rigor, security posture, and operational economics—showing that Adam still builds and ships hands-on systems:*

- [x] **HomeCloud (`EchoNin9/homecloud`) — Zero-Inbound-Port Hybrid Cloud IoT Control Plane**
  - *Business/Architectural Angle:* Connects on-prem Docker infrastructure (Synology NAS, Home Assistant, Mosquitto) to AWS IoT Core over persistent outbound-only MQTT/TLS with X.509 device certs, double-allowlisted command validation, replay protection, and a DynamoDB state mirror—running for ~$1–3/month on AWS with zero open firewall ports and no VPN latency.
  - *Deep-Dive Link:* `adamjinks.com/blog/homecloud` + `github.com/EchoNin9/homecloud`
- [x] **Funked Up Shift (`EchoNin9/funkedupshift` / `funkedupshift.com`) — 22-App Serverless Workspace**
  - *Business/Architectural Angle:* Multi-module serverless platform built on a single-table DynamoDB core, Python HTTP API Gateway dispatchers, and isolated Lambda microservices—backed by an 896-test `pytest` suite that parses Terraform `.tf` files in CI to guarantee 100% route parity before deploy.
  - *Deep-Dive Link:* `adamjinks.com/blog/funkedupshift`
- [x] **9host (`EchoNin9/9host`) — Multi-Tenant Cloud SaaS Hosting Platform**
  - *Business/Architectural Angle:* Multi-tenant edge hosting architecture (`*.echo9.net`) featuring strict `TENANT#` DynamoDB partition isolation, tier-based feature gating, dynamic CloudFront routing, React 19 admin control plane, and OpenTofu IaC.
- [x] **GeminiClaw & OpenClaw (`adamjinks/geminiclaw-home`, `adamjinks/openclaw-home`) — Autonomous Agent Operations & DR**
  - *Business/Architectural Angle:* Production runtime and disaster-recovery harness for autonomous AI agents. Features automated `verify-before-assertion` search grounding to eliminate hallucination, multi-network unified messaging orchestration, and Age-encrypted on-change state backups with idempotent machine restore runbooks.
- [x] **System 26 & Edge Publishing (`adamjinks/adamjinks.com`, `EchoNin9/bigcookie.music`) — High-Craft Static Edge Systems**
  - *Business/Architectural Angle:* Zero-CLS, dependency-light web platforms on Cloudflare Workers and AWS CloudFront/S3, pairing bespoke CSS token systems and automated DNS/IaC pipelines with sub-second edge delivery.
  - *Deep-Dive Link:* `adamjinks.com/blog/system-26-overhaul` & `adamjinks.com/blog/echo9-developer-services`

### 2.3 Selected Technical Writing Cross-Links (`adamjinks.com/blog`)
- [x] Add a clean, scannable **"Architecture Notes & Writing"** section (or integrate direct deep-dive links into each project row) linking to the business-relevant engineering posts on `adamjinks.com`:
  - *"HomeCloud: Bi-Directional Home Assistant Control on AWS Without a VPN"* (`/blog/homecloud`)
  - *"Funked Up Shift: How a Serverless Site Catalog Turned into a 22-App Personal Operating System"* (`/blog/funkedupshift`)
  - *"echo9.net: What Developer Services Actually Means"* (`/blog/echo9-developer-services`)
  - *"System 26: Trading Dark-Mode Cards for a Teal Pixel Desktop"* (`/blog/system-26-overhaul`)

---

## Phase 3: Hallmark Redesign Execution (`/hallmark redesign .`)

> Execute Hallmark's 7-step redesign workflow (`~/.agents/skills/hallmark/SKILL.md` + `references/redesign.md`).

- [x] **Step 0 — Pre-flight (`.hallmark/preflight.json`):**
  - Run Hallmark pre-flight on `index.html`, `styles.css`, and `script.js`.
  - Document preserved wiring (anchor navigation, real contact links, `CNAME`, static no-bundler deployment) and what is retired (the `#667eea → #764ba2` purple-to-blue gradient, yellow `#fbbf24` highlights, runtime `<style>` injection in `script.js`).
- [x] **Step 1 & 2 — Shape & Material Inventory:**
  - Genre: `editorial` or `modern-minimal` (executive technology leader + hands-on systems architect).
  - Job: `hire` / `book` (drive executive advisory, architecture consulting via `echo9.net`, and direct leadership inquiries to `adam@jinks.pro` / LinkedIn).
  - Run `node ~/.agents/skills/hallmark/scripts/theme.mjs deal` and `draw` to select a high-craft theme and macrostructure (e.g., Index-First, Dossier, or Workbench) that fits an executive & systems-builder portfolio.
- [x] **Step 3 & 4 — Token & Base CSS Scaffolding:**
  - Run `node ~/.agents/skills/hallmark/scripts/theme.mjs scaffold <slug>` to generate `tokens.css` and `base.css`.
  - Ensure **100% of colors and fonts go through `:root` tokens** (Hallmark Floor rule #1).
  - Replace external render-blocking Google Fonts with self-hosted subsetted `.woff2` faces or a zero-latency modern font stack.
- [x] **Step 5 & 6 — Build Hero First, Then Sections:**
  - Build the header/nav and hero first; run `node ~/.agents/skills/hallmark/scripts/sloplint.mjs index.html --render --stage hero`.
  - Build the remaining sections (About & Core Competencies, Enterprise Track Record, Production Systems & Architecture Index, Technical Writing, Direct Contact).
  - Clean up `script.js`: remove all `document.createElement('style')` injections, fake button loading timeouts, and scroll-jitter parallax; keep only clean, accessible mobile navigation (`aria-expanded`, Escape key close) and `prefers-reduced-motion`-safe interactions.
- [x] **Step 7 — Hallmark `sloplint --render` Sweep:**
  - Run `node ~/.agents/skills/hallmark/scripts/sloplint.mjs index.html styles.css --render` until **0 Floor FAILs** and all Reflex/Finish gates are resolved or explicitly documented in the CSS stamp header.

---

## Phase 4: Multi-Skill Polish & Quality Gate

After Hallmark's `sloplint` passes, run a targeted pass with the newly installed specialist skills:

- [x] **Modern Web Platform Pass (`modern-web-guidance`):**
  - Verify semantic HTML landmarks, responsive fluid typography (`clamp()`), `overflow-x: clip` on `html, body`, and zero layout shift (`width`/`height` attributes on images).
- [x] **Interaction & Optical Polish (`apple-design` + `emil-design-eng` + `web-design-guidelines`):**
  - Check optical alignment of buttons, nav items, and project rows; verify tabular numerals (`font-variant-numeric: tabular-nums`) on dates/metrics.
  - Ensure all interactive controls implement instant `:focus-visible` rings and subtle, hardware-accelerated `transform`/`opacity` states with `@media (prefers-reduced-motion: reduce)` fallbacks.
- [x] **Second-Opinion Critique (`impeccable`):**
  - Run an `impeccable` critique/polish pass against the rendered page to catch any remaining visual tension, spacing inconsistencies, or weak hierarchy while keeping Hallmark's token floor intact.
- [x] **Live Browser & Accessibility Audit (`a11y-debugging` + `debug-optimize-lcp`):**
  - Verify desktop (`1280×800`, `1920×1080`) and mobile (`375×812`) viewports.
  - Confirm WCAG AA/AAA color contrast, keyboard tab order, and sub-second LCP.

---

## Phase 5: Preview Deployment & Production Promotion

- [x] Commit the refreshed site to the `preview` branch and push (`git push origin preview` -> auto-deploys to `https://jinks.pro/preview/`).
- [x] Verify the live preview build and check all external links (`adamjinks.com/blog/*`, `github.com/adamjinks`, `github.com/EchoNin9/*`, `linkedin.com/in/adamjinks`, `mailto:adam@jinks.pro`).
- [x] Promote `preview` to `main` (`./docs/workflow.sh deploy` or merge `preview` into `main`) and verify `https://jinks.pro`.
