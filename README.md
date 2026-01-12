# Erik's homedir - just add water

Meta repo which includes all of my other dotfile repos
Just recursively clone this repo:

`git clone --recursive https://github.com/fadein/homedir.git`

or manually initialize the submodules after the fact:

`git submodule init; git submodule update`


Run `linkToHome.sh` to set up symlinks

Run `git pull --recurse-submodules` to make sure all submodules everywhere are updated


## TODO

#### Per-host dotfiles

It is cumbersome to manage the custom settings needed by different hosts in single files.  Update `linkToHome.sh` such that it prefers to link hostname-specific dotfiles, when available.

For instance, given these dotfiles:

```
Xdefaults
atlantis.Xdefaults

alacritty.toml
mariner.alacritty.toml
altantis.alacritty.toml

gitconfig
voyager2.gitconfig
```

On **Atlantis** these files should be linked:

*   `atlantis.Xdefaults`
*   `altantis.alacritty.toml`
*   `gitconfig`

**Mariner** would use this set of files:

*   `Xdefaults`
*   `mariner.alacritty.toml`
*   `gitconfig`

And **Voyager2** would use:

*   `Xdefaults`
*   `alacritty.toml`
*   `voyager2.gitconfig`
