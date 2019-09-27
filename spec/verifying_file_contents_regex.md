Sometimes its not possible to have exact matches if the command output changes over time. When this happens you can use the `regex` type for your expectation, and it will parse your expectation as a regex.

Given a markdown file with the following contents:

~~~text file:aaa
```bash command
echo complicated > meow
```

```regex expected file:meow
^com[a-z]+
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
