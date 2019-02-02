#  _____                 _   _
# |  ___|   _ _ __   ___| |_(_) ___  _ __  ___
# | |_ | | | | '_ \ / __| __| |/ _ \| '_ \/ __|
# |  _|| |_| | | | | (__| |_| | (_) | | | \__ \
# |_|   \__,_|_| |_|\___|\__|_|\___/|_| |_|___/
# 

# dimanche 3 février 2019, 00:21:59 (UTC+0100)
# author: möbius
# version: v1.1

createMessage()
{
    if [[ $# -ge 2 ]]                                                                                         
        then                                                                                                  
            case "${1,,}" in                                                                                  
                0|'ok')                                                                                       
                    echo -e "${colors[2]}$(date "+%m/%d/%y %H:%M:%S") - ${2,,}.${colors[0]}"                  
                ;;                                                                                            
                1|'warn')                                                                                     
                    echo -e "${colors[3]}$(date "+%m/%d/%y %H:%M:%S") - ${2,,}.${colors[0]}"                  
                ;;                                                                                            
                2|'err')                                                                                      
                    echo -e "${colors[1]}$(date "+%m/%d/%y %H:%M:%S") - ${2,,}.${colors[0]}"                  
                ;;                                                                                            
                3|'info')                                                                                     
                    echo -e "${colors[4]}$(date "+%m/%d/%y %H:%M:%S") - $2.${colors[0]}"                      
                ;;
                                                                                            
                                                                                                            
                *)                                                                                            
                    echo -e "${colors[1]}[-] An error occured.${colors[0]}"                                   
                ;;                                                                                            
            esac                                                                                                                                                                                            
        else                                                                                                  
            echo -e "${colors[1]}[-] error: usage <create_message> [type] [message].${colors[0]}"             
            exit 1                                                                                            
    fi  
}


checkRoot()
{
    if [[ $(id -u) == '0' ]]; then createMessage 'err' 'root detected.'; exit 1; fi 
}