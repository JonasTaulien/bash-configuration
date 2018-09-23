#!/usr/bin/env bash
##############################
# Exports:
# - jr_funct_git_delete_branch_locally
#   @see jr_doc_funct_git_delete_branch_locally
##############################

alias jr_doc_funct_git_delete_branch_locally="echo \"
##########
# Deletes the branch locally
#
# @param1 name of the branch to delete
##########\""
jr_funct_git_delete_branch_locally(){
    local branchToDelete="${1}"

    git branch -d "${branchToDelete}"
}
export -f jr_funct_git_delete_branch_locally