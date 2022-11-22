# Reproducible Bioinformatics Analysis day 3

For this part, you will again be using Saga, not your own computer.

## More housekeeping

First, we need to do something on GitHub because
no longer accepts passwwords.

Follow the instructions on this page:
https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token#creating-a-personal-access-token-classic

<!-- H22 We may need this...

## More housekeeping

We need to configure one more thing for `git`.
We will later need this so that we don't have 
to type a password every time we interact with GitHub:

~~~
$ git config --global credential.helper store
~~~

-->

We will again follow some lesson episodes:

FIXME: bruk modulke load git/

NOTE If you are short on time, please skip the exercises,
these are marked with a pencil symbol at the left of the title.

## Repository on GitHub

* [Remotes in GitHub](https://swcarpentry.github.io/git-novice/07-github/index.html)

~~~diff
! The section "3. SSH Background and Setup" should be skipped as we did this on day 1.
~~~

## Pairing up

For the next part, pair up with someone at your table. You should agree on roles:
* One person is the **Owner** and will be using *their* planets repository on GitHub and Saga
* The other person is the *Collaborator*. It is very important the collaborator **no longer works in their `planets` folder** on Saga! Use `cd ..` before continuing.

Follow thes episodes

* [Collaborating](https://swcarpentry.github.io/git-novice/08-collab/index.html)
  * SKIP the exercise `Switch Roles and Repeat`
* [Conflicts](https://swcarpentry.github.io/git-novice/09-conflict/index.html)

## Other ways to collaborate

As a final exercise, you will learn how others can contribute to your repository even when they don't have been given access as a collaborator.

Your teachers will suggest a change to the file `mars.txt` in your repository. Please let them know where your repository is on GitHub.

* Add a link to your GitHub repository to this [Google Sheet](https://docs.google.com/spreadsheets/d/11MCUPoohlS76hDFWzwdO_mlhsT0NuJpGsIWoCHXhSvo/edit?usp=sharing).
* Keep an eye on your email
* Find out what change the teacher has proposed
* Accept the change by Merging the Pull Request
* Synchronize the repository to Saga and inspect your file(s)
