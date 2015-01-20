#!/bin/sh
_buildr()
{
    local cur prev words cword

    COMPREPLY=()
    _get_comp_words_by_ref cur prev

    case $prev in
        -buildfile|-file|-f)
            _filedir
            return 0
            ;;
        --libdir|-I)
            _filedir -d
            return 0
            ;;
    esac

    if [[ $cur == -D* ]]; then
        return 0
    elif [[ "$cur" == -* ]]; then
        COMPREPLY=( $( compgen -W '$( _parse_help "$1" -h )' -- "$cur" ) )
    else
        # nocheckstyle is a kluge, our checkstyle uses ant, which is
        # kind of slow
        buildfile_path=buildfile
        [[ ! -f $buildfile_path ]] && return 0
        local TARGETS=$(nocheckstyle=yes buildr -s -T | awk '{ print $2 }' )
        # since we turn off checkstyle, add it back. kluge...
        TARGETS+=' checkstyle'
        COMPREPLY=( $(compgen -W "${TARGETS}" -- ${cur}) )

    fi
}

complete -F _buildr buildr
