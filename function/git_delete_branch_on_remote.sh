#!/usr/bin/env bash
##############################
# Exports:
# - jr_funct_git_delete_branch_on_remote
#   @see jr_doc_funct_git_delete_branch_on_remote
##############################

alias jr_doc_funct_git_delete_branch_on_remote="echo \"
##########
# Deletes the branch on the remote
#
# @param1 name of the branch to delete
# @param2 name of the remote. Default: 'origin'
##########\""
jr_funct_git_delete_branch_on_remote(){
    local branchToDelete="${1}"
    local remoteName="${2:-origin}"

    git push "${remoteName}" --delete "${branchToDelete}"
}
export -f jr_funct_git_delete_branch_on_remote