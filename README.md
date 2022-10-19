## How to use 

The files in the .dotfiles repository need to be symlinked to from places
that the system expects the config files to be in the filesystem. 

### Set up symlinks
Use syntax `ln -s source destination` to set up soft links in all cases. The
`source` is where the file/folder actually is in the file system (e.g. 
somewhere in the .dotfiles directory) to `destination` is where the symlink
will be located. Note that if the destination is a folder leave off the 
trailing slash. 

##### Neovim
- ~/.../.dotfiles/nvim/ ~/.config/nvim 
- ~/.../.dotfiles/.profile ~/.profile
