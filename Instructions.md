## Oscal - Coradoc

The oscal-coradoc allows us to parse a asciidoc document to yaml. To test it out please checkout
the current work in progress branch `oscal-coradoc` from the the following repo:

### Setup

```sh
git pull https://github.com/metanorma/coradoc.git
```

### Sample file

We are using the same reference document as we have for `iso27002-oscal`, but we had to adjust a
bit to support groupping and multi-parts in a clauses. In high level the document is structrued like this

```md
== Group One

=== Clause One
==== Part One
==== Part Two 

=== Clause Two
==== Part One
==== Part Two

== Group Two
=== Clause One
==== Part One
==== Part Two 

=== Clause Two
==== Part One
```
Please check the attachment for the complete sample doc.