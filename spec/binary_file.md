You can test that a produced file has specific bytes by using the `binary` text.

~~~text file:binary_file_test.md
# binary_file_test.md
```bash command
echo ABCD > myfile
```

```binary expected file:myfile
41 42 43 44
```
~~~

Then simply run this command:

```bash command
bundle exec markspec binary_file_test.md
```

You should get:

```text expected stdout
Test: binary_file_test.md - pass
```

This matches the output file's 4 bytes to be exactly the 4 bytes that we specify in the expectation.
