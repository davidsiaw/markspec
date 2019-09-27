Markspec gives you errors properly

~~~text file:a_failing_test.md
# a_failing_test.md

```bash command
echo a
```

```text expected stdout
b
```
~~~

You can run this command:

```bash command
bundle exec markspec a_failing_test.md
```

You should get:

```text expected stdout
Test: a_failing_test.md - fail
```

```text expected stderr
Failures detected: 1 cases

1. bundle exec markspec a_failing_test.md
    expected: "b"
         got: "a"
```
