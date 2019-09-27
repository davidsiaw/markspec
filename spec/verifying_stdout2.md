Markspec can verify that a command returns something.

Given a markdown file with the following contents:

~~~text file:mytest.md
```bash command
echo hello
```

```text expected stdout
hi
```
~~~

You can run this command:

```bash command
bundle exec markspec mytest.md
```

You should get:

```text expected stdout
Test: mytest.md - fail
```

This is because the expected contents of stdout does not match the output of the bash command.
