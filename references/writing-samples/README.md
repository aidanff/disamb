# Writing samples

Drop PDFs here whose writing style should be adopted.

## What belongs here

Prose you wrote, or prose whose voice you want to write in. Memos, essays, reports, letters. The samples are read for **style only** — cadence, sentence length, vocabulary, punctuation habits, structure — never for subject matter, so their topic does not matter.

Two or three real samples beat a dozen mediocre ones. A sample that does not sound like how you want to write will pull the profile in the wrong direction.

## How they are used

They are **not** read during a normal `/disambiguate` run. That would be slow and expensive on every invocation.

Instead, run:

```
/disambiguate --learn
```

This reads every PDF in this folder and writes `../style-profile.md` — a compact, concrete description of the observed style. Normal runs read only that markdown file.

Re-run `--learn` whenever you add, replace, or remove a PDF. It overwrites the profile each time.

## Precedence

`writing-style.md` at the repo root always wins over the generated profile. The samples inform the style; your hand-written rules decide it.
