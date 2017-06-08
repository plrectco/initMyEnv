#!/bin/bash
version="v1.0"
user_name="Hanxiao"
user_mail="hah114@ucsd.edu"
git_name="HansSJTU"
git_email="Hanshosjtu@gmail.com"

source ./configs/bash_alias
source ./configs/bash_func
# Define OS specific downloads
if [ "$(uname)" == "Darwin" ]; then
    echo "${green}[Operation System Detect]${endcolor} Mac OSX "
    plugin_file="./configs/install.mac"
    os_name="OSX"
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    echo "${green}[Operation System Detect]${endcolor} Linux "
    plugin_file="./configs/install.linux"
    os_name="Linux"
    echo "${orange}Start to Update apt-get...${endcolor}"
    sudo apt-get update
    echo "${orange}Start to Setup Color Theme...${endcolor}"
    wget -O xt  http://git.io/v3D8e && chmod +x xt && ./xt && rm xt
else
    echo "${red}[Error]${endcolor} Unkown Operation System! "
    echo "This init script only support Mac OSX and Linux! "
EOF
fi

function install_plugins
{
    if [ $1 == "OSX" ]; then
        brew install "$2"
    elif [ $1 == "Linux" ]; then
        sudo apt-get install "$2"
        wait
        sleep 1
    fi
}

echo "${orange}Start to Install Plugins...${endcolor}"
total_plugin_num=`cat ${plugin_file} | wc -l`
current_plugin_num=1
while read line; do
    echo "${green}[${current_plugin_num} / ${total_plugin_num}] ${endcolor} : ${line}..."
    ((current_plugin_num++))
    install_plugins ${os_name} ${line}
done < ${plugin_file}
echo "${green}[FINISHED]${endcolor} done installing! "

if [ ! -d ~/.setting_backup ]; then
    mkdir ~/.setting_backup
fi

function backup_and_copy
{
    if [ -f "$1" ]; then
        backup "$1"
        mv ${backup_file_dir} ~/.setting_backup/
    fi
}

backup_and_copy ~/.bash_alias 
backup_and_copy ~/.bashrc
backup_and_copy ~/.tmux.conf
backup_and_copy ~/.vimrc
backup_and_copy ~/.gitconfig

if [ ! -d ~/.vim_runtime ]; then
    echo "${orange}Start to Setting Up Vim...${endcolor}"
    git clone https://github.com/amix/vimrc.git ~/.vim_runtime
    bash ~/.vim_runtime/install_awesome_vimrc.sh
    # ignore this map in old basic.vim
    sed -i "s@map <space> /@\" map <space> /@" ~/.vim_runtime/vimrcs/basic.vim  
fi

if [ -d ~/.vim_runtime/sources_forked/vim-peepopen ]; then
    if [ -d ~/.vim_runtime/sources_non_forked/vim-peepopen ]; then
        rm -rf ~/.vim_runtime/sources_forked/vim-peepopen
    else
        mv ~/.vim_runtime/sources_forked/vim-peepopen ~/.vim_runtime/sources_non_forked/
    fi
fi

if [ ! -d ~/.vim_runtime/sources_forked/ctrlp.vim ]; then
    mv /.vim_runtime/sources_non_forked/ctrlp.vim ~/.vim_runtime/sources_forked/
fi

if [ ! -d ~/.vim_runtime/sources_forked/vim-template ]; then
    git clone git://github.com/aperezdc/vim-template.git ~/.vim_runtime/sources_forked/vim-template
    # change the formatting of the template
    pushdd ~/.vim_runtime/sources_forked/vim-template/templates
    sed -i "s@%YEAR%@%DATE%@g" *
    sed -i "s@%MAIL%@${user_mail}@" *
    sed -i "s@%USER%@${user_name}@" *
    popdd
fi

cp ./configs/bash_alias ~/.bash_alias
cp ./configs/bash_func ~/.bash_func
cp ./configs/bashrc ~/.bashrc
cp ./configs/tmux.conf ~/.tmux.conf
cp ./configs/my_configs.vim ~/.vim_runtime/
cp ./configs/gitconfig ~/.gitconfig; sed -ie "s@#NAME#@${git_name}@g;s@#MAIL@${git_email}@g" ~/.gitconfig

if [ "$(uname)" == "Darwin" ]; then
    sed -i "s@#MAC @@" ~/.tmux.conf
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    # linux copy function is different than mac
    sed -i "s@pbcopy@xsel -bi@g" ~/.vim_runtime/my_configs.vim
fi

echo "${orange}done${endcolor}"

