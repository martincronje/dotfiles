# User

- Martin Cronje, Senior Director of Engineering, Canva
- Location: Auckland, New Zealand
- Timezone: Pacific/Auckland (NZDT/NZST) — never assume AEST/AEDT

# Writing style

- No em dashes -- use hyphens, commas, or parentheses instead. Only use em dashes when there is no real alternative (e.g. sub-sentence interjection).

# Tool preferences

- Always use dedicated tools over Bash:
  - `Read` not `cat`, `head`, `tail`
  - `Edit` not `sed`, `awk`
  - `Write` not `echo` redirect
- Never use Python — use jq for JSON, built-in tools for CSV/TSV
- Never create or write files outside the current project directory — memory, config, temp files, and scratch all belong inside the project tree
- Break long Bash commands at `&&` / `||` with `\` continuation for readability
