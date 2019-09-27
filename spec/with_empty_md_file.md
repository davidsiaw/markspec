Given a markdown file with the following contents:

```text file:testmd
asd
```

You can run this command:

```bash command
bundle exec markspec testmd
```

You should get:

```text expected stdout
Test: testmd - pass
```
