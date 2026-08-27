# disamb

A personal Claude Code skill: `/disambiguate` rewrites a previous output so it says exactly one thing, following rules you write by hand.

The rules live in [`writing-style.md`](./writing-style.md). That file is the point of this repo — it is meant to be edited constantly, and every edit is a commit, so your preferences accumulate instead of evaporating at the end of a session.

## Install

```bash
git clone <this repo> ~/dev/disamb
cd ~/dev/disamb
./install.sh
```

`install.sh` symlinks the repo to `~/.claude/skills/disambiguate`. Because it is a symlink, editing `writing-style.md` in the repo changes the skill's behavior on the next invocation. There is no sync step.

Start a new Claude Code session after installing.

## Use

| Command | What it rewrites |
|---|---|
| `/disambiguate` | Claude's last message |
| `/disambiguate 2` | two assistant messages back (`1` = last) |
| `/disambiguate the plan you wrote` | resolved from conversation context |
| `/disambiguate ./notes.md` | that file's contents, printed to chat |
| `/disambiguate --learn` | reads the writing samples, regenerates the style profile |

Output is the rewritten text and nothing else — no diff, no commentary, no preamble.

## Editing the rules

Open `writing-style.md` and write directives. The skill applies them literally, so be specific:

> Name the subject of every sentence — no bare "this" or "it" pointing at a previous clause.

beats

> Be clear.

The file ships with seed rules under six headings (Precision, Sentence construction, Words and phrases to avoid, Structure and formatting, Voice, Writing samples). They are examples of the form, not a style being imposed. Delete what you disagree with.

## Writing samples

Drop PDFs into `references/writing-samples/`, then run `/disambiguate --learn`. That reads them once and writes `references/style-profile.md`, a concrete description of the observed cadence, vocabulary, punctuation, and structure. Normal runs read only that markdown file, so the PDFs cost nothing per invocation.

Re-run `--learn` whenever you add or remove a sample.

See [`references/writing-samples/README.md`](./references/writing-samples/README.md) for what makes a good sample.

## Precedence

1. `writing-style.md` — your hand-written rules
2. `references/style-profile.md` — style distilled from the samples
3. default prose habits

Your rules win any conflict with the profile. Neither can override the skill's hard constraints: facts are preserved, information is never dropped for concision, and detail is never invented to resolve a vagueness that was in the original.
