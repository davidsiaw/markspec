Markspec gives you errors properly

~~~text file:a_failing_test2.md
# a_failing_test.md

```bash command
echo a
```

```text expected stdout
a
```

```text expected stdout
c
```
~~~

You can run this command:

```bash command
bundle exec markspec a_failing_test2.md
```

You should get:

```text expected stdout
Test: a_failing_test2.md - pass fail
```

```text expected stderr
Failures detected: 1 cases

1. bundle exec markspec a_failing_test2.md
    expected: "c"
         got: "a"
```
