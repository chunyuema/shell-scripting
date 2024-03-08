- Shell variables are by default string

### Parent and Child Shell

Every chil shell is like opening a new process under the parent shell

- `source <file_name>.sh` will execute in the current shell process
- `/bin/bash <file_name>.sh` and `./<filen_name>.sh` both will open a child shell process

```
 \-+= 0000 chunyuema /System/Applications/Utilities/Terminal.app/Contents/MacOS/Terminal
   \-+= 0001 root login -pf chunyuema /bin/zsh
     \--= 0002 chunyuema -zsh
```

- Running `(command)` will create a subshell and run the command within the parentheses
  - Example: `(ls; pwd; echo $BASH_SUBSHELL)`, `((echo $BASH_SUBSHELL))`
