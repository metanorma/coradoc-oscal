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

### Run the parsing

Once have the file locally available, then we can use this gem to parse the sample document to yaml.

Please use `bin/console` script to try that out in a repl. The main interface for this parsing is
`Coradoc::Oscal.parse`, but there was some issue on yaml serilization, so we also have a little
help to do all the parsing to yaml in one place using:

```ruby
Coradoc::Oscal.parse_to_yaml("./sample-oscal.adoc")
```

Btw, if you prefere to run the whole gem in docker, then you also do the following:

```sh
# install
make setup

# pry session
make console
```

The `parse_to_yaml` returns the yaml document, that we can write anywhere we like. Please
also check the attached output file for current version.