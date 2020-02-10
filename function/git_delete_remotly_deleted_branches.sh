#!/usr/bin/env bash
##############################
# Exports:
# - jr_funct_git_delete_remotly_deleted_branches
#   @see jr_doc_funct_git_delete_remotly_deleted_branches
##############################

alias jr_doc_funct_git_delete_remotly_deleted_branches="echo \"
##########
# Deletes all branches that were delete on the remote
#
# Source: https://medium.com/@kcmueller/delete-local-git-branches-that-were-deleted-on-remote-repository-b596b71b530c
##########\""
jr_funct_git_delete_remotly_deleted_branches(){
       echo "- Fetching and pruning branches" \
    && git fetch --all --prune \
    && echo "- Deleting branches that are gone on the remote" \
    && git branch -vv | grep ': gone]'|  grep -v "\*" | awk '{ print $1; }' | xargs git branch -d
}
export -f jr_funct_git_delete_remotly_deleted_branches