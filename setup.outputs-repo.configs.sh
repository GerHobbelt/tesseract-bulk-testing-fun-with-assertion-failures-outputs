#! /bin/bash
#
# approach strongly inspired by multiget (https://github.com/capr/multigit): two repos pointing into the same (huge!) test corpus dirtree in order to grab different stuff from it...
# 

git config --local core.worktree /e/ocr/
git config --local core.excludesfile .ocr-output-repo.excludes

# as we can't use TortoiseGit as usual for this repo (it crashes soonish!) we don't to see the clutter of the repo parts we're not (yet) interested in.
# Our process is to explicitly `git add` the goods we wish to incude into this repo, which should be all `git status` is about to show us
# without impacting its behaviour for ANY OTHER repositories of ours...
git config --local status.showUntrackedFiles no
