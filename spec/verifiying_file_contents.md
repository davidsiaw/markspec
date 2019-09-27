Markspec can also verify that a file contains some content after a command:

Given a markdown file with the following contents:

~~~text file:aaa
```bash command
echo foo > meow
```

```text expected file:meow
bar
```
~~~

You can run this command:

```bash command
bundle exec markspec aaa
```

You should get:

```text expected stdout
Test: aaa - fail
```

This is because the expected contents of the file after running the command does not match.
