# ln -s ~/config/k-vim.tmux.conf ~/.tmux.conf
# ln -s ~/config/k-vim/.bashrc ~/.bashrc
# ln -s ~/config/k-vim/.ycm_extra_conf.py ~/.ycm_extra_conf.py
cp molokai.vim bundle/molokai/colors/
cp cpp.vim ./bundle/vim-cpp-enhanced-highlight/after/syntax/cpp.vim
git config --global credential.helper store
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --"

git config --global user.email "zhang@zhiqiang.org"
git config --global user.name "zhiqiang"
git config --global push.default matching
