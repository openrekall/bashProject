#!/bin/bash -

if [[ ! -f /usr/bin/toilet ]];
    then
        apt-get update && apt-get install --force-yes -y toilet
fi 

clear && toilet -F gay -w 29999 "bashProject"

_FOLDER='./utils'
_VAR='var.sh'
_FUNC='func.sh'

if [[ -d "$_FOLDER" ]] && [[ -f "$_FOLDER/$_FUNC" ]] && [[ -f "$_FOLDER/$_VAR" ]];
    then
        # includes
        source $_FOLDER/$_VAR && source $_FOLDER/$_FUNC
        
        [ $? -eq 0 ] && createMessage 'ok' 'variables and functions are loading' || echo "\e[1;31m error: inclusions of variables and functions impossible.\e[0;m"

    else
        echo -e "\e[1;31m Error: folder [utils] not found.\e[0;m"
        exit 1
fi



echo ''
read -p 'Press any key to continue ...'