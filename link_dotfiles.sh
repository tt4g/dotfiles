#!/bin/sh

# this files directory.
local readonly _DIR_=$(dirname ${BASH_SOURCE:-$0})

function create_symlink__ () {
    local readonly FROM_=${1}
    local readonly TO_=${2}

    if [ -e "${TO_}"]; then
        echo "already exist ${TO_}"

        return
    fi

    ln -s "${FROM_}" "${TO_}"
}

# vim
create_symlink__ ${_DIR_}/vim/.vimrc ~/.vimrc

# gvim
create_symlink__ ${_DIR_}/vim/.vimrc ~/.gvimrc
