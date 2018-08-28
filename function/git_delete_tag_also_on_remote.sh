#!/usr/bin/env bash
##############################
# Exports:
# - jr_funct_git_delete_tag_also_on_remote
#   @see jr_doc_funct_git_delete_tag_also_on_remote
##############################

alias jr_doc_funct_git_delete_tag_also_on_remote="echo \"
##########
# Deletes the tag locally and on the remote
#
# @param1 name of the tag to delete
# @param2 name of the remote. Default: 'origin'
##########\""
jr_funct_git_delete_tag_also_on_remote(){
    local tagToDelete="${1}"
    local remoteName="${2:-origin}"

    git tag --delete "${tagToDelete}"
    git push --delete "${remoteName}" "${tagToDelete}"
}
export -f jr_funct_git_delete_tag_also_on_remote