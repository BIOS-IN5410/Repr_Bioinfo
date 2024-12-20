# Reproducible Bioinformatics Analysis day 1

Today we will do some 'housekeeping'.
We need to do several steps to prepare for the rest of this module.

## Log in

Log in to Educloud Fox Compute Cluster if you haven't already:
* replace ec-username with your Educloud username

~~~bash
ssh ec-username@fox.educloud.no
~~~


After logging in to Fox, choose on of the `int-` nodes
and log in to that.


## Using git on Fox

As part of BIOS-IN5410/9410, we will be using the so-called
version control software `git`.
This program is not installed by default on the compute nodes.

Use this command to see which versions of `git` are installed:

```
module avail git
```

Choose the latest version.
At the time of writing this, the latest version is 2.42.0
<!-- FIXME update with latest version each year -->
To be able to use it, type:

```
module load git/2.42.0-GCCcore-13.2.0
```

Now run `git --version` to verify that you have access to `git`.

**NOTE** if you see the following:

~~~bash
bash: git: command not found...
Install package 'git-core' to provide command 'git'? [N/y]
~~~

Press `N` and use the `module load` command described above instead.

## Tell `git` about us

When we use `git` on a new computer for the first time,
we need to configure a few things. 
This we only need to do once.

Below are a few examples of configurations we will set as we get started with Git:

* our name and email address,
* what our preferred text editor is,
* and that we want to use these settings globally (i.e. for every project).

On a command line, Git commands are written as `git verb options`,
where `verb` is what we actually want to doand `options` is
additional optional information which may be needed for the `verb`.
Type the following, replacing the text in quotation marks
with your own name and email address
(note that you will not see any output from these commands):

~~~bash
git config --global user.name "Your Name"
git config --global user.email "your@email.address"
~~~

This user name and email will be associated with your subsequent Git activity.

For this lesson, we will also be interacting with [GitHub](https://github.com/)
and so the email address used should be the same as the one used when
you later will be setting up your GitHub account.
If you are concerned about privacy, please review [GitHub's instructions for keeping your email address private][git-privacy]. 

>## Keeping your email private
>
>If you elect to use a private email address with GitHub, then use that same email address for the `user.email` value, e.g. `username@users.noreply.github.com` replacing `username` with your GitHub one.

We will be using the basic text editor "nano", so let's git know about it:

~~~bash
git config --global core.editor "nano -w"
~~~


Git (starting with version 2.28) allows configuration of the name of the branch created when you
initialize any new repository.
We wil use that feature to set it to `main` so it matches what GitHub uses:

~~~bash
git config --global init.defaultBranch main
~~~

Finally, we will set up how git behaves when it interacts with GitHub.

~~~bash
git config --global pull.rebase false
~~~


The commands we just ran above only need to be run once:
the flag `--global` tells Git
to use the settings for every project, in your user account, on this computer.

You can check your settings at any time:

~~~bash
git config --list
~~~

You can change your configuration as many times as you want: use the
same commands to choose another editor or update your email address.

## Setting up github.com

We will be using the could service for version control GitHub for sharing what we have under version control
with eachother, and/or the world.
For this, you will need an account on GitHub,
and enable Fox to communicte with GitHub's servers.

### Create an account on GitHub

* If you haven't done so already, go to [github.com](https://github.com)
  and create an account.
* If you have an account already, make sure you can log into it.
* Make sure the email address used is be the same as the one you used
  when setting up your git on Fox, above.
  If necessary, run the `git config --global user.email "your@email.address"`
  again.


### Enabling git on Fox (Educloud) to communicate with Github.com

We need to set up a way for Fox to authenticate with GitHub so it knows it’s 
us trying to connect to it.

We are going to set up the method that is commonly used by many different services to authenticate access on the command line.  This method is called Secure Shell Protocol (SSH).  SSH is a cryptographic network protocol that allows secure communication between computers using an otherwise insecure network.  

SSH uses what is called a key pair. This is two keys that work together to validate access. One key is publicly known and called the public key, and the other key called the private key is kept private. Very descriptive names.

You can think of the public key as a padlock, and only you have the key (the private key) to open it. You use the public key where you want a secure method of communication, such as your GitHub account.  You give this padlock, or public key, to GitHub and say “lock the communications to my account with this so that only computers that have my private key can unlock communications and send git commands as my GitHub account.”  

What we will do now is the minimum required to set up the SSH keys and add the public key to a GitHub account.
We will only have to do it once.


We will run the list command to check what key pairs already exist on your computer.

~~~bash
ls -a ~/.ssh
~~~


Your output is going to look a little different depending on whether or not 
SSH has ever been set up on the computer you are using. 

**If you have not set up SSH on Fox**,
the output will contain one or more of the following

~~~
id_fox_internal
id_fox_internal.pub
authorized_keys
known_hosts
~~~


When you see this, continue with the next section.

**If you have already set up SSH on Fox**,
the output will include the public and private key pairs:

~~~
id_ed25519
id_ed25519.pub
~~~

This means you can skip the next section and go directly to **"Copy the public key to GitHub"** below.


### Create an SSH key pair
To create an SSH key pair use this command, where the `-t` option specifies which type of algorithm to use and `-C` attaches a comment to the key, 
in our case, your email address:

~~~bash
ssh-keygen -t ed25519 -C "your@email.address"
~~~


~~~
Generating public/private ed25519 key pair.
Enter file in which to save the key (/fp/homes01/u01/ec-username/.ssh/id_ed25519):
~~~


We want to use the default file, so just press **Enter**.

~~~bash
Enter passphrase (empty for no passphrase):
~~~


Now, it is prompting us for a passphrase.
Since we are using an account on Fox that only we have access to,
we can skip creating a passphrase.
If you decide to do it anyways, be sure to use something memorable or save your passphrase somewhere, as there is no "reset my passphrase" option. 

~~~bash
Enter same passphrase again:
~~~


After entering the same passphrase a second time, we receive the confirmation

~~~
Your identification has been saved in /fp/homes01/u01/ec-username/.ssh/id_ed25519
Your public key has been saved in /fp/homes01/u01/ec-username/.ssh/id_ed25519.pub
The key fingerprint is:
SHA256:SMSPIStNyA00KPxuYu94KpZgRAYjgt9g4BA4kFy3g1o your@email.address
The key's randomart image is:
+--[ED25519 256]--+
|^B== o.          |
|%*=.*.+          |
|+=.E =.+         |
| .=.+.o..        |
|....  . S        |
|.+ o             |
|+ =              |
|.o.o             |
|oo+.             |
+----[SHA256]-----+
~~~


The "identification" is actually the private key. You should never share it.  The public key is appropriately named.  The "key fingerprint" 
is a shorter version of a public key.

Now that we have generated the SSH keys, we will find the SSH files when we check.

~~~bash
ls -a ~/.ssh
~~~

This should now include these files:

~~~
id_ed25519
id_ed25519.pub
~~~


### Copy the public key to GitHub
Now we have a SSH key pair and we can run this command to check if GitHub can read our authentication.  

~~~bash
ssh -T git@github.com
~~~

If you have never done this before, you'll likely see this message:

~~~
The authenticity of host 'github.com (192.30.255.112)' can't be established.
RSA key fingerprint is SHA256:nThbg6kXUpJWGl7E1IGOCspRomTxdCARLviKw6E5SY8.
This key is not known by any other names
Are you sure you want to continue connecting (yes/no/[fingerprint])? y
Please type 'yes', 'no' or the fingerprint: yes
Warning: Permanently added 'github.com' (RSA) to the list of known hosts.
git@github.com: Permission denied (publickey).
~~~

You may also see this message:

~~~
Permission denied (publickkey)
~~~

This is fine, we'll fix this in the next step.

Now Fox knows we trust github.com as a server.
But we still need to give GitHub our public key.

First, we need to copy the public key.
Be sure to include the `.pub` at the end,
otherwise you’re looking at the private key. 

~~~bash
cat ~/.ssh/id_ed25519.pub
~~~

The output will look something like this:

~~~
ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIDmRA3d51X0uu9wXek559gfn6UFNF69yZjChyBIU2qKI your@email.address
~~~


Now, on GitHub.com do the following:

* Click on your profile icon in the top right corner to get the drop-down menu.  
* Click "Settings," then on the  settings page, click "SSH and GPG keys,"
  on the left side "Account settings" menu.  
* Click the "New SSH key" button on the right side.
* Now, you can add a title, for example `Fox.educloud.no`
  so we can remember where the original key pair files are located
* Paste your SSH key into the field
* Click the "Add SSH key" to complete the setup.

Now that we’ve set that up, let’s check our authentication again from the command line. 

~~~bash
ssh -T git@github.com
~~~

You should now see this message:

~~~
Hi Your Name! You've successfully authenticated, but GitHub does not provide shell access.
~~~

This output confirms that the SSH key works as intended.
We are now ready to start learning version control!

-----
This material was adapted from the [Software Carpentry git lesson](https://swcarpentry.github.io/git-novice)
under their CC BY 4.0 license.