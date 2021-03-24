# Simple bash script to compare versions

The script `compare_versions.sh` receives two arguments and echoes `=`, `>` and `<` depending. The input may be version numbers separated by points or spaces. Examples:

```
$ ./compare_versions.sh "1.22.3" "1.3.2"
>
$ ./compare_versions.sh "1.22.3" "1 3"
<
$ ./compare_versions.sh "1.3" "1.3"
=
$ ./compare_versions.sh "4 3" "1.3"
>
```
