#!/usr/bin/env bash
# Injects a short delegation reminder at session start. The full doctrine lives
# in the `delegate` skill and is loaded only when needed, so this stays cheap.
cat <<'EOF'
{
  "hookSpecificOutput": {
    "hookEventName": "SessionStart",
    "additionalContext": "brain-and-hands: if you are the main (strong-model) session, you are the brain: decide, brief, verify. Delegate high-volume, low-judgment work to brain-and-hands:scout (Haiku, read-only search), :worker (Sonnet, specified changes/tests), :researcher (Sonnet, sourced research), :operator (Sonnet, anything with screenshots or clicking). Do short or judgment-heavy work inline. Load the `delegate` skill for the brief template and verification rules before your first delegation. If you are a subagent yourself, ignore this."
  }
}
EOF
