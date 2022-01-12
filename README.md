# dotfiles

End goal is for `git` files to reside in `$HOME/.cfg` but actual dot files to be at `$HOME`

- Start with `clone`ing the bare repo in `$HOME/.cfg`

`git clone --bare https://github.com/sanjidnet/dotfiles.git $HOME/.cfg`

- `config` outta perform `git` calls on cloned bare repo but have working tree in home directory.

`alias config='git --git-dir=$HOME/.cfg/ --work-tree=$HOME'`

- Checkout the actual content from the bare repository to $HOME directory

`config checkout`

- Only files that have been `git add`ed outta be tracked. Nothing else. Because `$HOME` directories usually contain heaps of other files we don't want to track.

`config config --local status.showUntrackedFiles no`

- Add/modify/commit/push as desired. But use `config` instead of `git`

`config status`

`config add .bash_profile`

`config commit -m "Add bash_profile"`

`config push`

- Find out which dot files are being tracked [source](https://stackoverflow.com/questions/15606955/how-can-i-make-git-show-a-list-of-the-files-that-are-being-tracked)

`config ls-tree -r main --name-only` 


SOURCE AND INSPIRATION:
https://www.atlassian.com/git/tutorials/dotfiles
