# rc-files

## vim
1. Remove ~/.vimrc `mv ~/.vimrc ~/.vimrc.old`
2. Sym link ./vimrc to ~/.vimrc `sudo ln ./vimrc ~/.vimrc`

## Register neovim plugins
When you add or update a plugin, you will need to call :UpdateRemotePlugins to update the remote plugin manifest. See :help remote-plugin-manifest for more information.
