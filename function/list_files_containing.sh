#!/usr/bin/env bash
##############################
# Exports:
# - jr_funct_list_files_containing
#   @see jr_doc_funct_list_files_containing
##############################



alias jr_doc_funct_list_files_containing="echo \"
##########
# Lists all files that contain a regex.
# It is not searched in directories or files for which the user does not have the permissions.
# The following directories get excluded:
# - '.git'
# - '.idea'
#
# @param1 a path to a directory in which should be searched.
# @param2 a regex.
# @stdout a list of files that contain the regex.
##########\""
jr_funct_list_files_containing(){
    local searchDirectory="${1}"
    local regex="${2}"
    grep --dereference-recursive --line-number --exclude-dir=".git" --exclude-dir=".idea" --extended-regexp "${regex}" "${searchDirectory}"  2> /dev/null
}
export -f jr_funct_list_files_containing