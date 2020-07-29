# ASB 2020 GitHub tutorial setup
#### Contributors:
* [Ryan Alcantara](https://twitter.com/Ryan_Alcantara_)
* [Gary Bruening](https://github.com/GBruening)
* [Ross Wilkinson](https://twitter.com/rd_wilkinson)
* [Steve Kasica](https://github.com/swkasica)

This will be the repository that we will use for the Git Tutorial for [ASB 2020](https://asb2020.gatech.edu/)!

# Pre-Meeting Setup
This section is intended to take you through the steps required before the meeting. 

There are three things that everyone needs to do BEFORE the tutorial. **If you have trouble with any of these steps,
please reach out to the tutorial organizers.**
1. First you need to create a [Github](https://github.com/) account. Follow the instructions on their page to setup your account.
2. The first program everyone will need is some version of Git. Git is the version control software that allows you to see, track, and edit changes to code bases. 
3. The second program is either [MATLAB](https://www.mathworks.com/), [Python](https://www.python.org/), or [R](https://www.r-project.org/about.html). We will be using these to run example scripts.

**Group Leaders have an additional step to complete BEFORE the tutorial:**
- Create one GitHub repository for your group via [these instructions](https://github.com/alcantarar/ASB_Tutorial/wiki/Group-Leader-Instructions).

## 1. Creating a GitHub Account
This should be fairly self explanatory. Go the the GitHub [website](https://github.com/), and create a new account.

## 2. Setup Git
### A. Installation
This [website](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) has more detailed install instructions for all 3 operating systems.

The tutorial will focus on using Git Bash with GitHub, but there are [desktop applications](https://git-scm.com/downloads/guis) 
that you may be interested in using after the tutorial. These desktop applications will not be used in the tutorial.

#### Windows
To download Git and use the Bash application, go to [this website](https://git-scm.com/download/win) and click the link associated with your version of Windows.

*Note: There are many configuration options available during the setup wizard. The recommended settings will suffice for 
this tutorial.*

#### Mac
With Mac (10.9 and above), you can install Git directly by running the command in terminal (without the `$`):
```
$ git --version
```
You can also install Git through the binary installer, and can be downloaded [here](https://git-scm.com/download/mac).

#### Linux
If you're on Fedora or another closely related distribution you should be able to run
	$ sudo dnf install git-all

or if you're on Debian-based, like Ubuntu run
	$ sudo apt install git-all

If these don't work, go to this [page](https://git-scm.com/download/linux) for more information.

### B. Configuration
Now that you have a GitHub account and downloaded Git, you need to configure Git so that it is connected to your GitHub
account.
1. Open Git Bash (Or Terminal on Mac) and execute these two lines, inserting your name and email associated with your 
GitHub account in quotations:
```
$ git config --global user.name "FIRSTNAME LASTNAME"
```
```
$ git config --global user.email "EMAIL-ASSOCIATED-WITH-GITHUB-ACCOUNT"
```
## 3. Installing MATLAB/Python/R
We setup this tutorial to be used with MATLAB, Python, and R.
While Python and R are both free to use and download, MATLAB will require a license. Most universities provide students licenses.

### MATLAB
These scripts were built in MATLAB 2019b, but we do not believe you need this specific version installed.
Any recent version should work with our code.
To download MATLAB go [here](https://www.mathworks.com/downloads/). 

### Python
We recommending using Python 2.7, 3.5, 3.6, or 3.7 with the Anaconda distribution. This is a large package that includes many of the base functions and IDE's that are very common to Python. If any of these versions of Python are not alredy installed on your computer, you may also consider installing it via [Miniconda](https://docs.conda.io/en/latest/miniconda.html), a minimal installer for conda.

To download the full Anaconda distribution, go [here](https://www.anaconda.com/products/individual) and choose your installer near the bottom. Anaconda comes with a few possible IDE's, we prefer VScode but you can use whichever to edit the scripts and run them.

### R
We will be R using version 3.6, and highly recommend following this tutorial with R in [RStudio](https://rstudio.com/).
