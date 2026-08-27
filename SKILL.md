---
name: disambiguate
description: Rewrite a previous output to remove ambiguity, following the personal rules in writing-style.md. Use when the user runs /disambiguate, or asks to disambiguate, tighten, or restyle an earlier answer.
---

# Disambiguate

Rewrite a previous output so it says exactly one thing, in the user's own style.

The rules live in `writing-style.md`, next to this file. That file is hand-edited by the user and grows over time. Read it fresh on every run — never work from memory of what it said before.

---

## Step 1 — Resolve the target

| Invocation | Target |
|---|---|
| `/disambiguate` | the immediately preceding assistant message |
| `/disambiguate 1` | same as bare — the last assistant message |
| `/disambiguate 2` | two assistant messages back |
| `/disambiguate the plan you wrote` | resolved from conversation context |
| `/disambiguate ./path/to/file.md` | that file's contents |
| `/disambiguate --learn` | not a rewrite — see **Learn mode** below |

A bare integer is always a backwards offset over *assistant* messages, counting from 1. Anything else that isn't a readable file path is resolved from conversation context.

Count only substantive assistant messages. Skip tool-call-only turns and one-line acknowledgements.

If the target is anything other than the last message, print one short line naming what was picked before the rewrite, so a wrong pick is immediately visible:

> Rewriting: your implementation plan from two messages back.

If the target cannot be resolved with confidence, ask which message is meant. Do not guess.

## Step 2 — Load the rules

1. Read `writing-style.md` from this skill's directory. Always. Every run.
2. Read `references/style-profile.md` if it exists and is non-empty.

Do **not** open anything in `references/writing-samples/` during a rewrite. Those PDFs are read only in learn mode.

Precedence, highest first:

1. `writing-style.md` — the user's explicit hand-written rules
2. `references/style-profile.md` — style distilled from the writing samples
3. default prose habits

`writing-style.md` wins any conflict with `style-profile.md`.

## Step 3 — Rewrite

Apply the rules literally. A rule in `writing-style.md` is an instruction, not a suggestion.

These constraints are not negotiable and are not overridable by a style rule:

- **Preserve every fact.** Numbers, names, file paths, versions, commands, claims, caveats. Disambiguating is not editing for content.
- **Never drop information to make prose tighter.** If a style rule and the content conflict, keep the content and let the prose be longer.
- **Never invent detail** to resolve a vagueness that was in the original. If the source is genuinely ambiguous about a fact — not just loosely worded, but actually underdetermined — keep it ambiguous and add one line after the rewrite naming what could not be resolved.
- **Leave code blocks, commands, quoted material, and links byte-identical**, unless a rule in `writing-style.md` explicitly says to change them.

What to fix, in the absence of a rule saying otherwise: unclear referents, sentences that admit two readings, hedges that don't carry information, and structure that buries the answer.

## Step 4 — Output

Print the rewritten text and nothing else. No diff. No commentary. No list of which rules were applied. No preamble like "Here's the disambiguated version."

The only two permitted additions:

- the one-line target confirmation from Step 1, when the target was not the last message
- the one-line unresolvable-ambiguity flag from Step 3, when one applies

If the target was a file path, print the rewrite in chat. Do not edit the file unless the user asks.

---

## Learn mode

`/disambiguate --learn` distills the writing samples into a reusable style profile.

1. List `references/writing-samples/`. If it contains no PDFs, say so plainly and stop. Write nothing.
2. Read each PDF with the `Read` tool. The `pages` parameter caps at 20 pages per request and is **required** for any PDF over 10 pages. For a long sample, read a representative slice — an opening section, a middle section, a closing section — rather than the whole document.
3. Write `references/style-profile.md`, overwriting any previous version.

Record observations about **style only**, never the samples' subject matter, so the profile stays reusable across topics:

- sentence length and cadence — typical range, and how it varies
- paragraph structure and length
- vocabulary and register — formal, plain, technical, conversational
- punctuation habits — dashes, semicolons, parentheses, lists
- opening and closing patterns
- constructions the author reliably avoids

Be concrete. "Sentences run 8–22 words, with a short one used for emphasis after a long one" is usable. "Clear and engaging" is not.

Cite which sample each observation came from. When samples disagree, say so rather than averaging them into mush.

After writing, report the file path and how many samples were read. Nothing else.
