#!/usr/bin/env sh
# Verify that the patch applies to a clean Mermaid 12.2.0 worktree.
set -eu
ROOT="$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)"
PATCH="$ROOT/patches/mermaid-12.2.0-invisible-gateway.patch"
cd "$ROOT"
git apply --check "$PATCH"
echo "ok: $PATCH"
