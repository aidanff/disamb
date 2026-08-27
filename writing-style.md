# Writing style

Hand-edited rules for `/disambiguate`. Add, change, and delete freely — this file is the whole point of the repo.

**How this file is used.** Every `/disambiguate` run reads this file fresh and applies the rules literally. A rule here is an instruction, not a suggestion. Rules override anything in `references/style-profile.md`. Nothing here can override the skill's hard constraints: facts are preserved, information is never dropped for concision, and detail is never invented.

**How to write a rule.** State it as a directive, and give an example when the wording alone could be read two ways. Bad: "be clear." Good: "Name the subject of every sentence — no bare 'this' or 'it' pointing at a previous clause."

The rules below are **seeds**. They are examples of the form, not a style being imposed. Keep the ones that match how you write, rewrite the rest, delete the ones you disagree with.

---

## Precision

- Name the subject. No bare "this," "that," or "it" pointing back at a whole previous clause.
- Replace a vague quantifier with the actual number when the number is known. "Several files" → "four files."
- If a sentence could be read two ways, pick the intended reading and write only that one.

## Sentence construction

- One claim per sentence. Split a sentence that joins two independent claims with a comma or "and."
- Prefer the active voice. Name who or what is doing the thing.
- Cut hedges that carry no information: "somewhat," "fairly," "I think," "it seems," "arguably," "probably" when the thing is not actually uncertain. Keep a hedge that marks real uncertainty.

## Words and phrases to avoid

- No "leverage," "utilize," "robust," "seamless," "delve," "in order to," "it's worth noting that."
- No throat-clearing openers: "Great question," "Certainly," "Let me explain."
- No summary closers that restate what was just said.

## Structure and formatting

- Lead with the answer. Reasoning follows the conclusion, never precedes it.
- Use a bulleted list only for items that are genuinely parallel. Otherwise use prose.
- Keep paragraphs under five sentences.

## Voice

<!-- Rules about tone, register, and how you sound. Add yours here. -->

## Writing samples

<!--
Reference specific PDFs in references/writing-samples/ here, and say what to
take from each one. For example:

- Follow the paragraph rhythm in `memo-2024.pdf` — short opener, long middle,
  short close.
- Do not copy the formal register of `contract-draft.pdf`; only its precision
  about defined terms.

Run `/disambiguate --learn` after adding a PDF to regenerate
references/style-profile.md.
-->
