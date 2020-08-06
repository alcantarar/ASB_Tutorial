# Post-Tutorial Q&A
 We received some great questions from attendees of the 2020 vASB GitHub Tutorial. We've consolidated them along
 with their answers. At the bottom is a list of resources that can help further your Git/GitHub understanding.

**Have you used the same process (Git/GitHub) for manuscripts? If so, any tips or suggestions?**

Git and GitHub work best with raw text files. Code is an example of this, and allows for the line-by-line
tracked changes we saw in the tutorial. If you use LaTeX to write manuscripts, Git/GitHub would be a great option
for manuscript version control. But if you use Word Documents, there are probably better options because
they are not raw text files. Here are two options to consider:
1. Google Drive has some [version control functionality](https://support.google.com/drive/answer/2409045?co=GENIE.Platform%3DDesktop&hl=en)
 with any type of file. It is limited, but can be very useful still.
2. A service like [Simul Docs](https://www.simuldocs.com/how-it-works) provides version control for Word 
Documents specifically. At this time, it is free to collaborate on a single document, but they offer paid 
services for more functionality. I'm using Simul Docs for one of my manuscripts and it's based on the same version 
control concepts we introduced at the start of this tutorial.

**When do I create a new repository?**

Repositories contain files for a given project, so I would have a repository for each project or study you might have.
You can then organize your repo with subfolders for scripts used to process, analyze, or visualize your data, for example.

**If I have multiple files in a repository and I think I may need to edit only some of them, should I
just branch/checkout those files or all of them?**

A clear distinction we need to make is that when you checkout a branch, your entire repository is copied. This will
contain all of your files, so you don't need to worry about knowing ahead of time which files you'll need
to change. You can just make changes in a branch, committing them along the way. 
When you are satisfied with the changes you've made in your branch, you can merge them into the master 
branch via a Pull Request like you did during [`Breakout 1`](Tutorial_Instructions/breakout_1.md).

**How does Git handle reverting back to an earlier version (from version n to n-2, for example)? 
What happens to versions n and n-1?**

We didn't have time to cover this in the 2020 ASB Tutorial, but it's been included in the associated video on youtube.
Undoing changes is handled by [`Breakout 2`](Tutorial_Instructions/breakout_2.md) in a way
that *maintains the integrity of your repository history*. This means that when we say
your repository is "reverted", a new commit is being made that undoes the prior changes. The changes you 
made in version n and n-1 are still present in your repository's commit history in case you ever want to view them. 
However, version n+1 now contains changes that are the exact opposite of versions n and n-1. This is illustrated in the 
[Further Considerations](https://github.com/alcantarar/ASB_Tutorial/blob/master/Tutorial_Instructions/breakout_2.md#further-considerations-reverting-multiple-changes-at-once)
 portion of Breakout 2.
 
 ## Additional Git/GitHub Resources
 * [Git Cheatsheet](Tutorial_Instructions/git_cheatsheet.md) has the most-common commands and their definitions.
 * [How to undo (almost) anything with Git](https://github.blog/2015-06-08-how-to-undo-almost-anything-with-git/) is a blog
 by GitHub on undoing commits, messages, etc.
 * [GitHub's Guides](https://guides.github.com/) contains many instructional blog posts covering everything you need to know
 about using Git and GitHub.
 * [Good enough practices in scientific computing by Wilson et al. (2017)](https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1005510)
 is a publication highlighting the need for academic researchers to start learning about scienfiic computing best practices.
 Version control is included, along with general recommendations for computing workflows.
 * [Pro Git](https://git-scm.com/book/en/v2) is the actual textbook on Git. It's free and chapters 1-5 should cover 90% of what you need to know.
 * [LearnGitBranching.org](https://learngitbranching.js.org/) is an interactive web app that illustrates branching. 