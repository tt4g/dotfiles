#!/bin/sh

# delete file if symlink.
#
# arg1: delete file path.
function delete_file_if_symlink__ () {
    local readonly TARGET_FILE=${1}

    if [ ! -e "${TARGET_FILE}"]; then
        echo "does not exist ${TARGET_FILE}"

        return
    fi

    if [ -L "${TARGET_FILE}"]; then
        unlink "${TARGET_FILE}"

        echo "remove ${TARGET_FILE}"
    else
        echo "not symlink ${TARGET_FILE}"
    fi
}

# delete directory if symlink.
#
# arg1: delete directory path.
function delete_dir_if_symlink__() {
    local readonly TARGET_DIR=${1}

    if [ ! -e "${TARGET_DIR}"]; then
        echo "does not exist ${TARGET_DIR}"

        return
    fi

    if [ -L "${TARGET_DIR}"]; then
        unlink "${TARGET_DIR}"

        echo "remove ${TARGET_DIR}"
    else
        echo "not symlink ${TARGET_DIR}"
    fi
}

# vim
delete_file_if_symlink__ ~/.vimrc

# gvim
delete_file_if_symlink__ ~/.gvimrc
