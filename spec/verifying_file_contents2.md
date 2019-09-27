Markspec can also verify that a file contains some content after a command. Simply use the `expected` keyword followed by `file:<some file>`.

For example, given a markdown file with the following contents:

~~~text file:aaa
```bash command
echo foo > meow
```

```text expected file:meow
foo
```
~~~

You can run this command:

```bash command
bundle exec markspec aaa
```

You should get:

```text expected stdout
Test: aaa - pass
```

This is because the expected contents of the file after running the command is what you have expected.
