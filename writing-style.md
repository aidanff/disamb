# Writing style

Hand-edited rules for `/disambiguate`. Add, change, and delete freely — this file is the whole point of the repo.

**How this file is used.** Every `/disambiguate` run reads this file fresh and applies the rules literally. A rule here is an instruction, not a suggestion. Rules override anything in `references/style-profile.md`. Nothing here can override the skill's hard constraints: facts are preserved, information is never dropped for concision, and detail is never invented.

**How to write a rule.** State it as a directive, and give an example when the wording alone could be read two ways. Bad: "be clear." Good: "Name the subject of every sentence — no bare 'this' or 'it' pointing at a previous clause."

The rules below are **seeds**. They are examples of the form, not a style being imposed. Keep the ones that match how you write, rewrite the rest, delete the ones you disagree with.

---

## Precision
- for any prose you produce, ensure that it's clear, concise, and human readable.
- within the prose you write, should you use a 'buzzword', industry term, or even shorthand include in parentheses an explanation or definition of what you mean.


## Sentence construction
- ensure all prose sentences are structurally simple, without fluff that might obscure or complicate its meaning.


## Words and phrases to avoid
- do not include em-dashes unless in situations where they're called for.
- avoid complex or obscure words - the primary goal is interpretability


## Structure and formatting
- avoid outputting paragraphs, if you can instead convert to a concise list of bulletpoints that obey the standards we've described in this doc. 

## Voice
- output in a neutral, jargon-free (unless needed) voice that speaks in the clarity an engineering manual would speak without being technically verbose.
- DO NOT output ANY prose that resembles a marketing-like or 'LinkedIn-speak' style of voice, you are not trying to market to me - you are an engineering partner and we need seamless communication.
  - this means like, nothing akin to opening a paragraph with "Two decisions, one of which technically consequential..." this reads incredibly dramatic and 'quippy' and it's something I HATE.

## Code
- if the output describes a code change made, include the absolute bare necessity of information (code) I need to understand the change, reported a github code change
- make the above code output preferences also be within a non-text box - I want it readable as a distinct code output instead of the rest of the terminal output.


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
