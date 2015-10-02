# 1.5 Tracking Changes

- How does tracking and adding changes make developers' lives easier?

  Tracking and adding changes allows developers to see snapshots of a project and understand the progression of the changes. If a change in code results in a bug, a developer is able to refer to a previous version of the code to understand the differences in the code and potential causes of the bug. It also makes it easier to collaborate and merge changes with other developers on a project.

- What is a commit?

  A commit is a save point in git, essentially a collection of changes.

- What are the best practices for commit messages?

  The commit messages themselves should be short (50 characters or less) and written in the imperative. The descriptions following the message can be longer.

- What does the HEAD^ argument mean?

  The HEAD^ argument refers to the last commit (the 2nd commit from your current, HEAD).

- What are the 3 stages of a git change and how do you move a file from one stage to the other?

  The three stages are modify, add and commit. To modify a file, you can make changes using an editor like Sublime. You can open the file in Sublime by typing "subl <file>" into your CLI. Once you are ready to add (or stage) those changes, you can use the command "git add <file>". Finally, to commit (or save) those changes, you use the command 'git commit -m "Insert commit message"'.

- Write a handy cheatsheet of the commands you need to commit your changes?

  - git init: create git repository
  - git status: information on current state
  - git add: stage changes
  - git commit -m "Your message": commit changes, include message
  - git commit -v: opens in Sublime for more verbose commit message
  - git push: push changes to remote repo

- What is a pull request and how do you create and merge one?

  A pull request can be initiated when code changes in a feature branch have been pushed to the remote repo (GitHub). The pull request essentially takes in the pushed changes from the feature branch and merges them into the master branch. You can create and merge a pull request using the prompts in GitHub:

      1. Click Compare and Pull Request
      2. Check that base and compare fields are correct
      3. Click Create Pull Request
      4. Select Merge Pull Request

  If merged correctly, you can delete the feature branch.

- Why are pull requests preferred when working with teams?

  Pull requests are required when pushing to feature branches. If a team members pushes to the master branch (and therefore doesn't use a pull request), he/she will directly change the master branch. This is considered "bad practice" because it automatically creates changes and could have consequences for the group's collective work.