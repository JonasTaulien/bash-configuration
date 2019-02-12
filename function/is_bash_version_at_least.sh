#!/usr/bin/env bash
##############################
# Exports:
# - jr_funct_is_bash_version_at_least
#   @see jr_doc_funct_is_bash_version_at_least
##############################

alias jr_doc_funct_is_bash_version_at_least="echo \"
##########
# Checks if the current bash version is at least the given one
#
# @param1 the major version
# @param2 the minor version
# @param3 the patch version
# @return
#   - 0 if the bash version is at least the given one
#   - 1 if not
##########\""
jr_funct_is_bash_version_at_least(){
    local major="${1}"
    local minor="${2}"
    local patch="${3}"


    if (( BASH_VERSINFO[0] > major )); then
      return 0

    elif (( BASH_VERSINFO[0] == major )); then
      if (( BASH_VERSINFO[1] > minor )); then
        return 0

      elif (( BASH_VERSINFO[1] == minor )); then
            if (( BASH_VERSINFO[2] >= patch )); then
                return 0
            fi
        fi
    fi

    return 1
}
export -f jr_funct_is_bash_version_at_least
