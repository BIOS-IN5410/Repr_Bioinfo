# Reproducible Bioinformatics Analysis day 2

For this part, you will be using Saga, not your own computer.


## Using git on Saga

The program we will use, `git`, is installed on Saga and availbale after you
log in.
However, we wil be using a *newer version*. 
Using (different versions of) software on Saga is done using the so-called 
`module` system.
We will be using this system throughout the course
to activiate per-installed software we need.

After logging in to Saga, use this command to see which versions of 
`git` is the default version:

```
$ git --version
```

Then, use this command to see which versions of `git` are installed:

```
$ module avail git
```

We will use version 2.36.0. To activate it, type:

```
$ module load git/2.36.0-GCCcore-11.3.0-nodocs
```

Now run `git --version` again to verify.

## Where to do the work

Start working in a folder such as `/cluster/home/yourusername/BIOS-IN5410`
replacing `yourusername` with your UiO username.

## Getting started with git

Follow these lesson episodes:

NOTE If you are short on time, please skip the exercises,
these are marked with a pencil symbol at the left of the title.

* [Creating a Repository](https://swcarpentry.github.io/git-novice/03-create/index.html)
* [Tracking Changes](https://swcarpentry.github.io/git-novice/04-changes/index.html)
* [Exploring History](https://swcarpentry.github.io/git-novice/05-history/index.html)
* [Ignoring Things](https://swcarpentry.github.io/git-novice/06-ignore/index.html)
