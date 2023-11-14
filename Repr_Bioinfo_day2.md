# Reproducible Bioinformatics Analysis day 2

For this part, you will be using Fox, not your own computer.
After logging in to Fox, choose on of the `int-` nodes
and log in to that.


## Using git on Fox

<!-- FIXME NEXT TIME edit to only load the module-->

The program we will use, `git`, is installed on Fox login nodes,
but not on the compute nodes.

Use this command to see which versions of `git` are installed:

```
module avail git
```

Choose the latest version.
At the time of writing this, the latest version is 2.38.1.
To activate it, type:

```
module load git/2.38.1-GCCcore-12.2.0-nodocs
```

Now run `git --version` to verify that you have access to `git`.

## A quick check

Run this command:

```
git config --list
```

It should give several lines of output.
If there is no output,
**you have to first follow the instructions for [Day 1](Repr_Bioinfo_day1.md) of this module**
before you continue.

## Where to do the work

Start working in a folder such as `/fp/homes01/u01/ec-username/BIOS-IN5410`
replacing `ec-username` with your Educloud username.

## Getting started with git

Follow these lesson episodes:

NOTES
* If you are short on time, please skip the exercises,
these are marked with a pencil symbol at the left of the title.
* After today, **do not delete the planets folder**, you will need it again
  for the next session

* [Creating a Repository](https://swcarpentry.github.io/git-novice/03-create.html)
  * NOTE here you are asked to make a folder on your Desktop, but we don't have that on Fox.
  Use `/fp/homes01/u01/ec-username/BIOS-IN5410` instead
(replacing `ec-username` with your Educloud username).
* [Tracking Changes](https://swcarpentry.github.io/git-novice/04-changes.html)
* [Exploring History](https://swcarpentry.github.io/git-novice/05-history.html)
* [Ignoring Things](https://swcarpentry.github.io/git-novice/06-ignore.html)

NOTES
* As mentioned, **do not delete the `planets` folder**, you will need it again
  for the next session
