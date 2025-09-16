#!/bin/bash
commands=`ls ~/.cheat-sheet/`

files=()
i=0
s=65    # decimal ASCII "A"
for f in $commands
do
    # convert to octal then ASCII character for selection tag
    files[i]="$f"
    files[i+1]="" #`tail -n 1 ~/.cheat-sheet/${f}`    # save file name
    ((i+=2))
    ((s++))
done

result=$(whiptail --backtitle "Command Selector" --title "Select a command" \
    --menu "Select the command to execute" 18 60 10 "${files[@]}" 3>&2 2>&1 1>&3-)

# if [[ $result == "" ]]; then
#     exit
# fi

command=`tail -n 1 ~/.cheat-sheet/${result}`
echo $command
echo ""
eval $command

sed -i '$ d' ~/.zsh_history
echo ": $(date +%s):0;$command" >> ~/.zsh_history
