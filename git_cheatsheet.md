# Git Cheatsheet
## One and Done Configuration
### Cloning a branch's (branch is "branch-name") repository locally (on your computer). Do this once into an empty folder.
```
git clone master https://USERNAME:PASSWORD@github.com/USERNAME/RESPOSITORY-NAME/
git clone -b branch-name https://USERNAME:PASSWORD@github.com/USERNAME/REPOSITORY-NAME/
```
### Tell git who you are. This may be required if you are accessing private repositories and you should do this just once when you first install git.
```
git config --global user.name "USERNAME"
git config --global user.email "GITHUB-EMAIL"
```

## Going to work on something and not sure if a collaborator has made changes?
### Update your local repository before doing ANYTHING during a coding session. This makes sure you are working on up-to-date files for your branch.
Navigate to your local repository/branch using `cd` command in git bash, then:
```
git pull origin branch-name
```
This "pulls" the most recent changes from the repository to your local folder. 
Now you are good to work on some code. When you're done, save locally and then
do the following to take a "snapshot" of your repository (make a commit) and send it to the repository on GitHub:

### stage repository, commit changes (with comments), and then push to github
```
git add .
git commit -m 'Insert commit message here'
git push
```
A commit is just a snapshot of changes made to files. Staging the files is like deciding which people to include in an image.
The `git add .` command tells git that every file is going to be included in the snapshot, but you can replace `.` with a specific filename
 to just commit changes for that file. Github keeps track of all commits (changes) within a repository. 
*Always include short comments for commits!*
"Pushing" to github is just sending your updated code to github. Add, commit, comment, and push often because they serve as
checkpoints in your development process.  

