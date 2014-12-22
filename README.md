BashProfile
===========

This is the repository for KISRDevelopment's standard
Bash Profile for **Mac OSX**. It provides useful
extended functionality such as **autocompletion**
and a smart **Git Prompt**.

Feel free to use it as you please, customize it, change it.

List of Files
-------------

* **.bash_profile**:

    This is your main profile.
    This is the default file that your
    terminal will source every time it runs. This file sources other
    files which contain completion scripts, color codes,
    extra functions, etc

* **bash_colors.sh**:

    This file has a list of convenience variables
    each representing a color code. It makes it easier
    for you to add colors to your prompts and scripts.

* **git-prompt.sh**:

    This is **not** the standard git-prompt from GitHub.
    This is a simplified custom script that lets you know the
    name of your current branch by appending it to your
    prompt. It will also color code the branch name
    to let you know the state of your branch.

* **git-completion.sh**:

    This script comes directly from GitHub and git-scm.
    It provides complex and ***extremely*** useful tab-completion
    for git on the command line.

* **django-autocomplete.sh**:

    This is the standard django completion script.
    It gives you tab-completion for ``manage.py``
    on the command line.

Setup
-----

1. Clone this repository
2. Create a ``~/bin/`` directory
3. Copy ``bash_colors.sh``,
    ``git-prompt.sh``,
    ``git-completion.sh``,
    ``django-autocomplete.sh``
    into ``~/bin/``
4.  Backup your **current** ``~/.bash_profile``
5.  Replace it with the **new**
    ``.bash_profile`` from this repository

Contributing
------------

These files are for all of us to use and customize.
If you want to make modifications, report bugs, add new features
you should feel free to do so. Just document your suggestions
and changes using the Issue Tracker.
