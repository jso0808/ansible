#!/usr/bin/env bash
set -e

# ansible vm ip
ssh -o StrictHostKeyChecking=no cloviradmin@10.100.64.236 '
  echo "Connected to $(hostname) as $(whoami)"
  export PATH="$HOME/.local/bin:$PATH"
  which ansible-playbook || echo "ansible-playbook not in PATH (pipx PATH 추가 필요)"
'
