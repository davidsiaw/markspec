Given a markdown file with the following contents:

~~~text file:aaa
```bash command
echo hello
```

```text expected stdout
hi
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