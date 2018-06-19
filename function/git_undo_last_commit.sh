#!/usr/bin/env bash
##############################
# Exports:
# - jr_funct_git_undo_last_commit
#   @see jr_doc_funct_git_undo_last_commit
##############################

alias jr_doc_funct_git_undo_last_commit="echo \"
##########
#  Undos act of committing
##########\""
jr_funct_git_undo_last_commit(){
    git reset --soft HEAD~
}
export -f jr_funct_git_undo_last_commit