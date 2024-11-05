# Reproducible Bioinformatics Analysis day 3

For this part, you will again be using Fox, not your own computer.

<!-- 
## More housekeeping

First, we need to do something on GitHub because
no longer accepts passwwords.

Follow [these instructions](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token#creating-a-personal-access-token-classic).

-->

Remember to enable the use of the `git` command on Fox
by using `module load git/#.#.#...` as you did previously.


## Repository on GitHub

We will again follow some lesson episodes:

**NOTEs**

1. Use the `recipes` folder you made last time for this lesson also.
2. If you are short on time, please skip the exercises,
  these are marked with a pencil symbol at the left of the title.

~~~diff
! The section "3. SSH Background and Setup" should be skipped as we did this on day 1.
~~~

* [Remotes in GitHub](https://swcarpentry.github.io/git-novice/07-github.html)

## Syncing last week's work to GitHub

Last week you committed a few SLURM scripts to version control.

* Make a new GitHub repository
* Add it as a remote to your version control folder on Fox
* Push the commits from it to your new repository on GitHub

## Pairing up

For the next part, pair up with someone at your table. You should agree on roles:
* One person is the **Owner** and will be using *their* planets repository on GitHub and Fox
* The other person is the *Collaborator*. It is very important the collaborator **no longer works in their `planets` folder** on Fox! Use `cd ..` before continuing.

Follow these episodes

* [Collaborating](https://swcarpentry.github.io/git-novice/08-collab.html)
  * SKIP the exercise `Switch Roles and Repeat`
* [Conflicts](https://swcarpentry.github.io/git-novice/09-conflict.html)

## Other ways to collaborate

As a final exercise, you will learn how others can contribute to your repository even when they don't have been given access as a collaborator.

Your teachers will suggest a change to the file `guacamole.md` in your repository.
Please let them know where your repository is on GitHub.

* Add a link to your GitHub repository to this [Google Sheet](https://docs.google.com/spreadsheets/d/11MCUPoohlS76hDFWzwdO_mlhsT0NuJpGsIWoCHXhSvo/edit?usp=sharing).
* Keep an eye on your email
* Find out what change the teacher has proposed
* Accept the change by Merging the Pull Request
* Pull the changes to your repository on Fox and inspect your file(s)
