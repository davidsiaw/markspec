Markspec can also verify that a file contains some content after a command. Simply use the `expected` keyword followed by `file:<some file>`.

For example, given a markdown file with the following contents:

~~~text file:my_markdown_test.md
# my_markdown_test.md

```bash command
echo foo > meow
```

```text expected file:meow
foo
```
~~~

You can run this command:

```bash command
bundle exec markspec my_markdown_test.md
```

You should get:

```text expected stdout
Test: my_markdown_test.md - pass
```

This is because the expected contents of the file after running the command is what you have expected.
