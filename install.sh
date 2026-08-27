#!/usr/bin/env bash
# Symlink this repo into ~/.claude/skills so /disambiguate is available.
# Idempotent: safe to re-run.

set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SKILLS_DIR="${HOME}/.claude/skills"
LINK="${SKILLS_DIR}/disambiguate"

mkdir -p "${SKILLS_DIR}"

if [[ -L "${LINK}" ]]; then
  current="$(readlink "${LINK}")"
  if [[ "${current}" == "${REPO_DIR}" ]]; then
    echo "Already installed: ${LINK} -> ${REPO_DIR}"
    exit 0
  fi
  echo "Replacing existing symlink (was -> ${current})"
  rm "${LINK}"
elif [[ -e "${LINK}" ]]; then
  echo "Error: ${LINK} exists and is not a symlink." >&2
  echo "Move or remove it, then re-run this script." >&2
  exit 1
fi

ln -s "${REPO_DIR}" "${LINK}"
echo "Installed: ${LINK} -> ${REPO_DIR}"
echo "Start a new Claude Code session, then run /disambiguate."
