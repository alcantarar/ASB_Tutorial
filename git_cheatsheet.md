# Git Cheatsheet
### Modified from the [Github Education Material](https://education.github.com/git-cheat-sheet-education.pdf)
### There are additional functions, but this is a basic introduction. 
#### Note: Text in brackets must be replaced by object described within brackets: "[FIRSTNAME LASTNAME]" -> "Kevin Bacon" 
## DEFINITIONS
* **Local Repository** - A version of your repository that physically exists on your computer.
* **Remote Repository** - A version of your repository that exists on a server (like GitHub's).
* **Directory** - A folder on your computer. The working directory is the folder you are working in and can be changed using the `cd` command.
* **Commit** - A snapshot of changes made to files. Files must be staged via the `git add` command. 
* **Staged/Staging** - The process of identifying which files will be included in a commit. Can include all files in directory or specific files.

## DIRECTORY NAVIGATION
Change directory to explicit location:
```
cd PATH/TO/DESIRED/DIRECTORY/
```
Change directory to a folder "up" one level:
```
cd ..
```
*This is equivalent to `cd PATH/TO/DESIRED/`*

## CONFIGURATION
#### Configuring user information used across all local repositories on your computer
Set a name that is identifiable for credit when reviewing version history:
```
git config --global user.name "[FIRSTNAME LASTNAME]"
```
Set an email address that will be associated with each commit and required to access private
private repositories:
```
git config --global user.email "[GITHUB EMAIL]"
```
## SETUP LOCAL REPOSITORY
Initialize an existing directory as a git repository:
```
git init
```
Retrieve an entire remote repository via URL:
```
git clone [URL]
```
## STAGE & SNAPSHOT CHANGES
Show modified files in working directory, staged for your next commit:
```
git status
```
Stage a recently changed file, making it ready to be part of your next commit:
```
git add [FILENAME]
```
Stage all changes made in working directory, making them ready to be part of your next commit:
```
git add .
```
Unstage a file while retaining the changes made to the file:
```
git reset [FILENAME]
```
View line-by-line changes made to files not staged:
```
git diff
```
View line-by-line changes made to files that are staged:
```
git diff --staged
``` 
Finialize the snapshot of your staged file(s) by making a commit:
```
git commit -m "[SHORT MESSAGE DESCRIBING CHANGES MADE]"
```
Transmit local commits (changes) to the remote repository:
```
git push
```
Update local repository with changes made in remote repository:
```
git pull
```

## BRANCHES
#### Isolating work into specific branches and changing branches
List your available branches. An asterik will appear next to the currently active branch:
```
git branch
```
Create a new branch based on the most recent commit:
```
git branch [BRANCH-NAME]
```
Switch your local directory to another branch:
```
git checkout -b [BRANCH-NAME]
```
Show all the commits in the current branch's history:
```
git log
```
