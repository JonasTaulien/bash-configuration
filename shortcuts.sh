#!/usr/bin/env bash
# This is the only place to create non-prefixed (jr_) and non-documented functions

##########
# -p is for printing slashes after directory names
# -1 is for printing every file on its own line
# -A is for printing also files, that are starting with a dot (but not '.' and '..')
##########
alias ls1='ls -p1A'


##########
# -p is for printing slashes after directory names
# -l is for printing every file on its own line, prefixed with meta-information
# -A is for printing also files, that are starting with a dot (but not '.' and '..')
##########
alias lsl='ls -plA'


alias resource_bashrc='source ~/.bashrc'
alias pdf_concat='jr_funct_pdf_concat'

alias git_add_all_and_commit='git add -A && git commit -m'
alias git_create_branch='jr_funct_git_create_branch'
alias git_delete_branch_locally='jr_funct_git_delete_branch_locally'
alias git_delete_branch_on_remote='jr_funct_git_delete_branch_on_remote'
alias git_delete_branch_also_on_remote='jr_funct_git_delete_branch_also_on_remote'
alias git_rename_branch_also_on_remote='jr_funct_git_rename_branch_also_on_remote'
alias git_rename_current_branch_also_on_remote='jr_funct_git_rename_current_branch_also_on_remote'
alias git_delete_tag_also_on_remote='jr_funct_git_delete_tag_also_on_remote'
alias git_undo_last_commit='jr_funct_git_undo_last_commit'

# Directories (Just type `$var<tab>` to cd into it)
export imp="$HOME/Important"