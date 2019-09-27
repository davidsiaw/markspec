Markdown files with no expectation blocks always pass.

Given a markdown file with the following contents:

```text file:test.md
# This file is called `test.md`

asd
```

You can run this command:

```bash command
bundle exec markspec test.md
```

And you should get:

```text expected stdout
Test: test.md - pass
```
