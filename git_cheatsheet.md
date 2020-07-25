# Git Cheatsheet
### Modified from the [Github Education Material](https://education.github.com/git-cheat-sheet-education.pdf)
### There are additional Git functions, but this is a basic introduction. 

## NAVIGATING IN GIT BASH
Change directory to explicit location (forward/backward slash depends on operating system) :
```
cd PATH/TO/DESIRED/DIRECTORY/
```
Change directory to a folder "up" one level:
```
cd ..
```
*This is equivalent to `cd PATH/TO/DESIRED/` if current directory is `PATH/TO/DESIRED/DIRECTORY`*

If Git returns a long message, you can press `Enter` to continue seeing the ouptut or `q` to quit showing the message
and return to the Git Bash command line.

## CONFIGURATION
#### Configuring user information used across all local repositories on your computer
Set a name that is identifiable for credit when reviewing version history:
```
git config --global user.name "FIRSTNAME LASTNAME"
```
Set an email address that will be associated with each commit and required to access private 
repositories:
```
git config --global user.email "EMAIL-ASSOCIATED-WITH-GITHUB-ACCOUNT"
```
## GETTING HELP
Replace FUNCTION with the operation you need help with. `--help` will return the full help page, while `--h` returns a consolidated help page:
``` 
git FUNCTION --help
git FUNCTION -h
```
## SETUP LOCAL REPOSITORY
Initialize an existing directory as a git repository:
```
git init
```
Retrieve an entire remote repository via URL:
```
git clone URL
```
## STAGE & SNAPSHOT CHANGES
Update local repository with changes made in remote repository:
```
git pull
```
Show modified files in working directory, staged for your next commit:
```
git status
```
Stage a recently changed file, making it ready to be part of your next commit:
```
git add FILENAME
```
Stage all changes made in working directory, making them ready to be part of your next commit:
```
git add .
```
Finialize the snapshot of your staged file(s) by making a commit:
```
git commit -m "MESSAGE DESCRIBING CHANGES MADE"
```
Transmit local commits (changes) to the remote repository:
```
git push
```
Unstage a file while retaining the changes made to the file:
```
git reset FILENAME
```
View line-by-line changes made to files not staged:
```
git diff
```
View line-by-line changes made to files that are staged:
```
git diff --staged
``` 


## BRANCHES
#### Isolating work into specific branches and changing branches
List your available branches. An asterik will appear next to the currently active branch:
```
git branch
```
Create a new branch based on the most recent commit:
```
git branch BRANCH-NAME
```
Switch your local directory to another branch:
```
git checkout BRANCH-NAME
```
Show all the commits in the current branch's history:
```
git log --oneline
```
