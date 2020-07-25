# Breakout Room #1
![](media/breakout1_fig.png)    
*The fruit of your labor and best shot at winning the Nobel Peach Prize*

## Background
You and your collaborators have made a recent discovery that will surely result in winning the prestigious
Nobel Peach Prize, awarded to the group of biomechanists with the best peach-related figure made entirely with 
code! Your team worked for months, submitted the figure to Nature, and just received reviewer comments. 
Your team will be able to quickly address these comments in parallel thanks to Git and GitHub!

The code used to generate your figure is comprised of an upper-level script (e.g. `ASB_Tutorial/main_script`), which 
calls five numbered subscripts (e.g. `ASB_Tutorial/subscripts/script_1`). The data required to generate your 
figure is stored as CSV files at `ASB_Tutorial/data/`. 

**If you need help remembering the git functions, refer to `ASB_Tutorial/git_cheatsheet.md`.**

## Objective
Work together to address the reviewer comment for each subscript and generate the revised figure 
by running `main_script`.

## 1. Organize
Your project leader has already invited you as collaborators on the remote repository on Github. If this hasn't 
happened yet, ask for help from the Tutorial Team.

### a. Assign Tasks
You will divide and conquer the reviewer comments. There is one comment for each of the five subscripts. Open a tab,
naviagte to your team's repository page, and select the `reviewer_comments.md` file. After reading, assign each team 
member a subscript to fix. If there are more subscripts than team members, assign multiple subscripts for some members. 

### b. Branch Out
Once subscripts are assigned, each team member should make their own branch of the repository on GitHub. Branching creates
isolated versions of the current state of the repository and allows team members to simultaneously make changes without 
affecting each other or the script stored in the remote (online) repository. **Name each branch after the respective 
subscript(s) that will be fixed.**

1. Navigate to the main page of your team's repository on GitHub (e.g. www.github.com/GROUP-LEADER-USERNAME/ASB_Tutorial)

2. Click the branch selector menu:    
    ![](media/branch-selection-dropdown.png)
3. Type in a descriptive name for your branch (like the name of subscript you're changing), then select **Create branch**:    
    ![](media/branch-creation-text.png)
    
    If you can't find the "create branch" button, you might not have accepted the invitation to collaborate on the 
    repository. Check your email or ask for help from the Tutorial Team.
    
### c. Clone repository
If you're going to be changing code, you need a copy of it on your computer. This is initially done through a process
called "cloning", where you download a local copy of a remote repository. To do this, you will use Git Bash or Terminal,
depending on your operating system. *This tutorial will refer to Git Bash (**not Git CMD**), but the functions are the same in Terminal.*
 
Repositories can be cloned into any folder, but for this tutorial you will be cloning into the `Desktop` folder.
Open Git Bash and navigate to the `Desktop` folder by using the `cd` (change directory) command:
```
$ cd Desktop
```
*If you're having trouble navigating into your Desktop folder, ask for help from the Tutorial Team. This process can
vary depending on operating system and version of Git Bash.*

Now you can clone the remote repository from github.com to your `Desktop` folder. `URL` is the URL for the repository of
the group leader and will include their username. It should be like `https://github.com/GROUP-LEADER-USERNAME/ASB_Tutorial`.
```
$ git clone URL
```
You now have a copy of the repository located at `~/Desktop`. Go check it out! You'll see all the files that are 
present on the main page (master branch) of your group's repository on GitHub. In Git Bash, navigate into the repository
you just cloned:
```
$ cd ASB_Tutorial
```
Before making any changes to files, you need to "check out" the branch you created on GitHub. Remember that branches 
are isolated versions of a (local and/or remote) repository. Execute the following to switch branches:
```
$ git checkout BRANCH-NAME
```
Git should return a message explaining that you `"Switched to branch BRANCH-NAME"`. 
Now you're ready to address some very reasonable reviewer comments!

## 2. Making changes to files
### a. Changing your assigned subscript 
Open MATLAB (or preferred IDE for R and python scripts) and make the requested change in `reviewer_comments.md`. 
Save the debugged file with the same filename.

### b. Commit changes
You made changes to a file in the repository and want these changes to be recorded by Git. Git takes "snapshots" called 
"commits" of your repository files. You need to communicate the following things explicitly to Git:
1) Which files to include in the commit (snapshot).
2) When to make the commit. This process is not automatic.
3. Write a message summarizing the changes made (so you can reference them later).
3) Update the remote repository on GitHub with your local changes.

These steps are performed in Git Bash and are outlined below.

#### 1. Tell Git that files have been changed and should be included in the commit. 
Git will compare the current state of the files to their previous state and identify any changes made. Files that have
been changed will be "staged". In the "snapshot" analogy, this step is like wrangling your family members right before 
taking the picture. Don't forget the `.` in the command below. This informs Git that you want to stage all the changed 
files in the repository. If many files are being changed, commits can become complex and difficult to differentiate. 
If you want to stage only specific files, replace `.` with the filenames separated by a space, breaking a single complex
commit into several smaller ones.
```
$ git add .
```
Use the `status` function to view the files Git has identified as undergoing some change (lines starting with `#>>>` 
represent an example returned message):
```
$ git status

1>>> On branch BRANCH-NAME 
2>>> Your branch is up to date with 'origin/BRANCH-NAME'.
3>>>
4>>> Changes to be commited:
5>>>   (use "git restore HEAD <file>..." to unstage)
6>>>       modified: script_1.m
```
This returned message tells you a few things:
1. The branch you're working on. (line 1)
2. Git found changes that are staged (the result of `git add .`; line 4)
3. How to remove a specific file from being staged (`git restore HEAD FILENAME`; line 5)
4. Names of the changed file(s) (line 6). 

#### 2 & 3. Tell Git when to make the commit and what changed
To continue using the "snapshot" analogy, you need to decide when to take the "snapshot". In this case, you changed some
code and this represents a meaningful level of changes made to your script. To help organize commits, you need to add a 
message that will be associated with the staged changes. For now, make it short and sweet. For more information on meaningful 
commit messages, read [this blog post](https://chris.beams.io/posts/git-commit/) later. Remember: Git will only commit the 
*staged* changes. Commit changes by using the `commit` command with the `-m` (message) tag: 
```
$ git commit -m "COMMIT MESSAGE GOES HERE IN QUOTATIONS"
```
#### 3. Update remote repository
Git has now taken a snapshot of your local repository and identified all changes made. However, the remote repository 
stored on GitHub hasn't been updated. This is actually a cool feature of Git because you can make many changes (commits) 
without internet access to GitHub because you have a local copy of the repository on your computer! Then, when it's 
convenient, you can send all your commits to the repository on GitHub. This process is called "pushing" commits from a 
local repository to the remote repository.

To push commits to your remote repository on GitHub, run: 
```
$ git push 
```
Now your branch on the remote repository is updated with these changes! Later, we will use GitHub to view the 
line-by-line changes made to the script as well as your commit message.

**Before moving on, make sure all team members have fixed their assigned scripts, and staged/committed/pushed their changes.**

## 3. Merging branches
At this point, each branch contains their respective fixed subscripts. However, `main_script` on the `master` branch 
on GitHub still isn't updated because you haven't merged all these changes together. The way this is accomplished in 
GitHub is through a process called "Pull Requests". Pull requests merge two branches, applying any changes made in 
one branch to the other branch. 

### a. Open Pull Request
Each member will need to open a pull request for their branch. Navigate to the main repository page on GitHub and select
the **Pull requests** tab:    

![](media/PR-tab.png)    

and then select the green "New pull request" button.

Set the "base" branch to `master` and the "compare" branch to your branch from the dropdown menu:    

![](media/PR-dropdown.png)

GitHub will bring up information about your branch like the number of commits, files changed, and contributors. You will
also see the line-by-line changes and commit message from earlier. Select the green "Create pull request" button. Then 
GitHub will ask you to add more information about the branch you're trying to merge. Write an informative title and 
select the green "Create pull request" button to confirm your decision:  
  
![](media/PR-text.png)    

Now, GitHub will compare the changed files in your branch to their original state in the master branch and try to implement
these changes. In some cases, there may be conflicts where multiple contributors have changed the same line of code. These
conflicts are typically resolved manually, but good project organization can generally avoid merge conflicts. **If GitHub 
finds conflicts with your pull request, ask for help from the Tutorial Team before merging the pull request.**

If there are no conflicts (there shouldn't be any), select the green "Merge pull request" button and confirm your choice.
This will update the master branch to include the changes you made in your branch. **This process will need to be 
accomplished for each branch.**    

![](media/merge-PR.png)    

You can now delete the branch by selecting "Delete branch" because your script has been update! Making branches is easy 
in Git, so it's best practice to make one for each feature you'd like to add to a script and delete it when you're done.
     
![](media/delete-branch.png)

At this point, the changes have been merged in the master branch in the remote repository on GitHub, but not your local 
copy. Updating your local repository is easy. This process is called "Pulling". 

## 4. Pull changes from Remote Repository
In Git Bash, switch back to the `master` branch:
```
$ git checkout master
```
Then, tell Git to check the remote repository for any changes that might have occurred and pull those changes over to your
local copy:
```
$ git pull
```
Now your local copy is up to date with the remote repository on GitHub. 

## Moment of Truth
Go ahead and run `main_script` on your own. If all the changes from each branch were merged into
`master`, `main_script` should produce the reviewer's version of your figure (below). Doesn't it look better? :wink:

![](media/breakout2_fig.png)



 


