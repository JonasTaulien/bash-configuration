#!/usr/bin/env bash
##############################
# Exports:
# - jr_funct_git_rename_current_branch_also_on_remote
#   @see jr_doc_funct_git_rename_current_branch_also_on_remote
#
# Requires:
# - jr_funct_git_get_current_branch
# - jr_funct_git_rename_branch_also_on_remote
##############################

alias jr_doc_funct_git_rename_current_branch_also_on_remote="echo \"
##########
# Renames the current branch
#
# @param1 new name
##########\""
jr_funct_git_rename_current_branch_also_on_remote(){
    local newName="${1}"
    local nameOfCurrentBranch=$(jr_funct_git_get_current_branch)

    jr_funct_git_rename_branch_also_on_remote "${nameOfCurrentBranch}" "${newName}"
}
export -f jr_funct_git_rename_current_branch_also_on_remote