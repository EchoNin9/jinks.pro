#!/bin/bash
# SessionStart hook for jinks.pro (supports Claude iOS app, Claude Code Web, and local CLI).
#
# 1. On remote/mobile sessions (CLAUDE_CODE_REMOTE="true"), links repo-bundled skills
#    into ~/.agents/skills and ~/.claude/skills, and fetches Hallmark's theme reference
#    images if missing so `theme.mjs` and `sloplint.mjs` work out of the box on a phone.
# 2. Injects the mobile/travel workflow & delegation context into the session.
set -euo pipefail

PROJECT_DIR="${CLAUDE_PROJECT_DIR:-$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)}"

if [ "${CLAUDE_CODE_REMOTE:-}" = "true" ]; then
  {
    mkdir -p "$HOME/.agents/skills" "$HOME/.claude/skills"
    for skill_dir in "$PROJECT_DIR"/.claude/skills/*/; do
      [ -d "$skill_dir" ] || continue
      name="$(basename "$skill_dir")"
      ln -sfn "$skill_dir" "$HOME/.agents/skills/$name"
      ln -sfn "$skill_dir" "$HOME/.claude/skills/$name"
    done

    # Fetch Hallmark theme reference images if not yet hydrated in the container
    if ! ls "$PROJECT_DIR/.claude/skills/hallmark/references/themes/"*.jpg >/dev/null 2>&1; then
      tmp_hm="$(mktemp -d)"
      if git clone --depth 1 --quiet https://github.com/Nutlope/hallmark.git "$tmp_hm" 2>/dev/null; then
        cp -n "$tmp_hm/skills/hallmark/references/themes/"*.jpg "$PROJECT_DIR/.claude/skills/hallmark/references/themes/" 2>/dev/null || true
      fi
      rm -rf "$tmp_hm"
    fi
  } >&2
fi

read -r -d '' CONTEXT <<'EOF' || true
MOBILE / TRAVEL WORKFLOW IS ACTIVE for jinks.pro (canonical plan: docs/26refresh.md & CLAUDE.md).
Adam is traveling and working from his phone:
1. Read `docs/26refresh.md` FIRST. Check off `[x]` items as you complete them.
2. All UI overhaul skills (`hallmark`, `impeccable`, `apple-design`, `emil-design-eng`, `animation-vocabulary`, `web-design-guidelines`, `frontend-design`, `agent-delegate`) are pre-installed in `.claude/skills/` and `~/.agents/skills/`.
3. Branch & Preview rules:
   - Never push website edits directly to `main`.
   - Work on `preview` (or your `claude/*` branch and merge/push to `origin/preview`).
   - Every push to `preview` or `claude/**` deploys the live mobile staging site to `https://jinks.pro/preview/` while keeping production `https://jinks.pro/` safely on `main`.
4. Do not stall on minor questions—make high-craft decisions per `docs/26refresh.md`, commit/push checkpoints so Adam can preview at `https://jinks.pro/preview/` on his phone, and report the live preview URL.
EOF

python3 - "$CONTEXT" <<'PY'
import json, sys
print(json.dumps({
    "hookSpecificOutput": {
        "hookEventName": "SessionStart",
        "additionalContext": sys.argv[1],
    }
}))
PY
