# Erik's homedir - just add water

Meta repo which includes all of my other dotfile repos
Just recursively clone this repo:

``` git clone --recursive https://github.com/fadein/homedir.git ```

or manually initialize the submodules after the fact:

``` git submodule init; git submodule update ```


Run ``` linkToHome.sh ``` to set up symlinks

Run ``` git pull --recurse-submodules ``` to make sure all submodules everywhere are updated
