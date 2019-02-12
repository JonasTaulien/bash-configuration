#!/usr/bin/env bash
##############################
# Exports:
# - jr_funct_macos_pdf_concat
#   @see jr_doc_funct_macos_pdf_concat
##############################

alias jr_macos_pdf_concat="echo \"
##########
# Concatinates PDFs
#
# @param1: Output-File
# @param2-x: Input-Files
##########\""
alias jr_funct_macos_pdf_concat="'/System/Library/Automator/Combine PDF Pages.action/Contents/Resources/join.py' -o"
