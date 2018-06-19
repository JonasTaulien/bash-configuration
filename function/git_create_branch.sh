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
##########\""
jr_funct_git_create_branch(){
    local branchToCreate="${1}"
    
    git checkout -b "${branchToCreate}"
    git push --no-verify --set-upstream origin "${branchToCreate}"
}
export -f jr_funct_git_create_branch