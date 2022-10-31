# How to Contribute?

There are many ways you can contribute.

Contributing code, writing documentation, reporting bugs, etc.
such as reading and providing your feedback to issues and pull-requests (PR),
all are necessary and valid ways to help.

If you want to collaborate with source code, it is important to take into account the
following recommendations, which will allow to have a control of the changes that
are implemented and allow us to work under the same guidelines.

## Making code changes

As this is an open project, everyone can contribute their changes and
integrate them to the main repository in an easy way.

For this we recommend that all the work you do, do it in a branch
(branch) apart. When you're ready to work on a bug or a new
feature, create a branch. The reason this is important is
that you can do as many commits as you deem necessary. When you are ready
you can mix them. Let's take a look at the basic flow:

    git checkout –b task-556
    …fix and git commit often…
    git push origin task-556

The reason we have created two branches is in order to keep
away from the main (master). Keep master branch clean for changes
coming from the main repository (upstream) makes your life and ours more
simple. You can send us a pull request of your changes. we do
we will review and integrate the base repository.

## Pull Requests

Please keep your pull requests focused on a single specific topic.
If you have a number of requests to submit, then submit requests
separated. It is much easier to receive small, well-defined requests than
having to review and manage large requests that point to different
topics.

If you end up doing multiple commits for a single change (associated to a topic
in particular), please re-arrange it into a single commit:

```sh
$ git rebase -i HEAD~10 # where 10 is the number of commits you need.
```

This will open an editor with your commits and some instructions you need
follow to be able to choose the commits you want to integrate by replacing 'pick'
by 's' to merge with a previous commit.

When you save and exit the editor where you were merging commits, git
will combine them and show you another editor with the commit messages. Choose the
message you want the change to be with (or write a new one).
Save and exit to complete this action. Use a forced push to
your repository (fork).

```sh
git push -f
```