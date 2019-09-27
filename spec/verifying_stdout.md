Markspec can verify that a command returns something.

Given a markdown file with the following contents:

~~~text file:mytest.md
# mytest.md

```bash command
echo hello
```

```text expected stdout
hello
```
~~~

You can run this command:

```bash command
bundle exec markspec mytest.md
```

You should get:

```text expected stdout
Test: mytest.md - pass
```

This is because the expected contents of stdout match.
