#!/usr/bin/env bash
##############################
# Exports:
# - jr_funct_git_rename_branch_also_on_remote
#   @see jr_doc_funct_git_rename_branch_also_on_remote
##############################

alias jr_doc_funct_git_rename_branch_also_on_remote="echo \"
##########
# Renames a branch
#
# @param1 old name
# @param2 new name
##########\""
jr_funct_git_rename_branch_also_on_remote(){
    local oldName="${1}"
    local newName="${2}"
    
    # From https://stackoverflow.com/a/30590238/4099380
    echo "Renaming local ${oldName} to ${newName}"
    git branch -m "${oldName}" "${newName}"
    
    echo "Removing remote branch named ${oldName}"
    git push origin --no-verify --delete "${oldName}"
    
    echo "Pushing renamed local branch ${newName}"
    git push --no-verify --set-upstream origin "${newName}"
}
export -f jr_funct_git_rename_branch_also_on_remote