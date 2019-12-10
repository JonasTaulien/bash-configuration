#!/usr/bin/env bash
##############################
# Exports:
# - jr_funct_check_password_breach
#   @see jr_doc_funct_check_password_breach
##############################



alias jr_doc_funct_check_password_breach="echo \"
##########
# Checks for a password breach. The password never leaves the computer.
#
# @param1 the password
##########\""
jr_funct_check_password_breach(){
    local password="${1}"

    local hash=$(echo -n "${password}" | openssl dgst -sha1)

    local firstFiveCharacters=$(echo "${hash}" | head -c 5)
    local rest=$(echo -n "${hash}" | tail -c 35 | tr '[:lower:]' '[:upper:]')

    # https://stackoverflow.com/questions/59273405/echo-curl-grep-behaves-strangely-on-macos
    local response=$(curl --silent -N "https://api.pwnedpasswords.com/range/${firstFiveCharacters}" | tr -d '\015')

    if grepRes=$(echo -n "${response}" | grep -E "${rest}:(.*)"); then
        local occurences=$(echo "${grepRes}" | sed -E "s/${rest}:([1-9][0-9]*)/\1/")

        echo "ATTENTION! Found password ${occurences} times in password breaches"
    else
        echo "Everything fine :)"
    fi
}

export -f jr_funct_check_password_breach