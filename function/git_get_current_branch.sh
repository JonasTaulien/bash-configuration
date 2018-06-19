#!/usr/bin/env bash
##############################
# Exports:
# - jr_funct_git_get_current_branch
#   @see jr_doc_funct_git_get_current_branch
##############################

alias jr_doc_funct_git_get_current_branch="echo \"
##########
# Outputs the name of the current branch or nothing if we are not in a repository.
##########\""
jr_funct_git_get_current_branch(){
    git branch 2>/dev/null | grep -E "^\*" | tr -d "* "
}
export -f jr_funct_git_get_current_branch