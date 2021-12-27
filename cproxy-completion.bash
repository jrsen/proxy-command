#/usr/bin/env bash
_subcmd_autocomplete()
{
    local CURR=${COMP_WORDS[COMP_CWORD]}
    local PREV=${COMP_WORDS[COMP_CWORD-1]}
    # echo "before:"
    # echo "      COMP_WORDS=${COMP_WORDS[@]} size=${#COMP_WORDS[@]}"
    # echo "      COMP_CWORD=${COMP_CWORD}"
    # echo "      COMP_LINE=${COMP_LINE}"

    if [[ ${COMP_CWORD} -eq 1 ]]; then
        COMPREPLY=($(compgen -c "${CURR}"))
        return
    fi
    COMP_WORDS=(${COMP_WORDS[@]:1:((${#COMP_WORDS[@]-1}))})
    ((COMP_CWORD=COMP_CWORD-1))
    COMP_LINE=$( IFS=$' '; echo "${COMP_WORDS[*]}")
    # echo "after:"
    # echo "      COMP_WORDS=${COMP_WORDS[@]} size=${#COMP_WORDS[@]}"
    # echo "      COMP_CWORD=${COMP_CWORD}"
    # echo "      COMP_LINE=|${COMP_LINE}|"
    # __git_wrap__git_main
    # echo "COMPREPLY=${COMPREPLY[@]}"
    
}

complete -F _subcmd_autocomplete cproxy