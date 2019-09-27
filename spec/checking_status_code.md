Markspec can check that a command returns a particular exit code when an error occurs. For example, you can write a file with the following content:

~~~text file:my_status_test.md
# my_status_test.md

```bash command

false
```

```text expected exitcode
1
```
~~~

You can run this command:

```bash command
bundle exec markspec my_status_test.md
```

You should get:

```text expected stdout
Test: my_status_test.md - pass
```

This is because the exit code of `false` is always 1, so it matches the exit code you provided.
