#!/usr/bin/env bash
##############################
# Exports:
# - jr_funct_git_create_branch
#   @see jr_doc_funct_git_create_branch
##############################

alias jr_doc_funct_git_create_branch="echo \"
##########
# Creates a new branch from the current branch
#
# @param1 name of the branch
# @param2 name of the remote. Default: 'origin'
# @param2 name of the branch on the remote. Default: @param1
##########\""
jr_funct_git_create_branch(){
    local branchToCreate="${1}"
    local remoteName="${2:-origin}"
    local remoteBranchName="${3:-${branchToCreate}}"

    git checkout -b "${branchToCreate}"
    git push --no-verify --set-upstream "${remoteName}" "${remoteBranchName}"
}
export -f jr_funct_git_create_branch