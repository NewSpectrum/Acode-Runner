#★ Command history tweaks:
	#- Append history instead of overwriting when shell exits.
		shopt -s histappend
	#- When using history substitution, do not exec command immediately.
	#- Do not save to history commands starting with space.
		shopt -s histverify
	#- Do not save duplicated commands.
		export HISTCONTROL=ignoreboth

#★ Default command line prompt.
PROMPT_DIRTRIM=2
PS1='\[\e[0;92m\]\w\[\e[0m\] \[\e[0;93m\] \$\[\e[0m\] '
	export PS1
PS2='\n\n\[\e[0;92m\]\w\[\e[0m\] \[\e[0;93m\]\n\$\[\e[0m\] '
	export PS2

#▸ For guides and definitions, see 'Primary Shell Prompt' in...
	#- The 'Termux.README.md' file in the 'Acode-Runner' repo
		#? Relative path from project ROOT ($repo):
			# "${repo}/data/termux/Termux.README.md"
		#? GitHub File URL:
			# 
#? https://github.com/NewSpectrum-Home/wiki/bash-basics#Primary-Shell-Prompt


#★ Error Handling
	#- Handles nonexistent commands.
		#? If user has entered command which invokes non-available utility, command-not-found will give a package suggestions.
if [[ -x /data/data/com.termux/files/usr/libexec/termux/command-not-found ]]
then
command_not_found_handle() {
	/data/data/com.termux/files/usr/libexec/termux/command-not-found "$1"
}
fi



#!!=================================

#|===================================|#
#|                                   |#
#|  ★ Begin profile customization ★  |#
#|                                   |#
#|===================================|#

declare -x NSDeps="$HOME/.dependencies/NewSpectrum"
declare -x Startup="$HOME/config/startup/scripts"

#★ Escape-Sequence Colors & Formatting
	#- Text & 'Paragraph' Formatting
	declare -x reset="\e[0m"
	declare -x br="\n"
	declare -x tab="\t"
	declare -x rbr="\e[0m \n"
	declare -x rtab="\e[0m \t"
	declare -x brtab="\n\t"
	declare -x RBT="\e[0m \n\t"

	#- Error Formatting
	declare -x OrngErr="\e[1;38;5;208m"
	declare -x YlwData="\e[38;5;228m"
	
		#? User Input Options
		declare -x GrnOpt="${rtab}\e[38;5;154m"
		declare -x bGrnOpt="${rtab}\e[1;38;5;154m"
		declare -x BlueOpt="${rtab}\e[38;5;45m"
		declare -x bBlueOpt="${rtab}\e[1;38;5;45m"
		#? Try/Catch
		declare -x CatchAlert="${OrngErr}${brtab}"
		declare -x CatchData="${YlwData}Details: | "
		declare -x DetailsBr="${brtab}         | "
#

#★ Dependency Checking
function DepError() {
	echo -e "${CatchAlert}ERROR: Missing Dependencies"
	echo -e "---------------------------------------${RBT}"
	echo -e "${CatchData}The configurations added to your Bash Profile"
	echo -e "${DetailsBr}and Environment via the 'bash.bashrc' file"
	echo -e "${DetailsBr}requires certain dependencies from New Spectrum's"
	echo -e "${DetailsBr}'Acode-Runner' GitHub Repository, and some are"
	echo -e "${DetailsBr}either missing or saved incorrectly."
	echo -e "${DetailsBr}"
	echo -e "${DetailsBr}Would you like to automatically download any"
	echo -e "${DetailsBr}missing dependencies and restart the shell?"
	echo -e "${DetailsBr}${GrnOpt}Yes | Y ${tab}Decide for each"
	echo -e "${DetailsBr}${BlueOpt}All | A ${tab}Yes to All"
	echo -e "${DetailsBr}${OrngOpt}No | N ${tab}Decline & Continue in Shell"
	echo -e "${DetailsBr}${OrngOpt}Exit | E ${tab}Decline & Close Shell"
	
	read -p "${RBT}" DepAnswer
	
	if [[ $DepAnswer == "y" ]]; then
		DepAnswer="Yes"
	elif [[ $DepAnswer == "yes" ]]; then
		DepAnswer="Yes"
	elif [[ $DepAnswer == "n" ]]; then
		DepAnswer="No"
	elif [[ $DepAnswer == "no" ]]; then
		DepAnswer="No"
	elif [[ $DepAnswer == "a" ]]; then
		DepAnswer="All"
	elif [[ $DepAnswer == "all" ]]; then
		DepAnswer="All"
	elif [[ $DepAnswer == "e" ]]; then
		DepAnswer="Exit"
	elif [[ $DepAnswer == "exit" ]]; then
		DepAnswer="Exit"
	fi
	
	if [[ $DepAnswer == "All" ]]; then
		DepDownload=true
	elif [[ $DepAnswer == "Yes" ]]; then
		DepDownload=true
	elif [[ $DepAnswer == "No" ]]; then
		DepDownload=false
	elif [[ $DepAnswer == "Exit" ]]; then
		DepDownload=false
		exit
	fi

	if [[ -d "$DepDownload" == true ]]; then
		alias depdl="wget -q --show-progress --progress-type=bar"
		mkdir -p "${NSDeps}/scripts"
		mkdir -p "${NSDeps}/commands"
		
		pushd "${NSDeps}/scripts"
		depdl 
}

if [[ -d "$Startup" == false ]]; then
	DepError
elif [[ -d "$NSDeps" == false ]]; then
	DepError
fi
#
	



#
	wget -
fi


if [[ -d "$Startup" == $False ]]; then
	mkdir -v -p "$Startup"
	
	if [[ -d "$Startup" == $True ]]
	then
		APPEND_PATH="~/config/startup/scripts"
		continue
	elif [[ -d "$Startup" == $False ]]
	then
		echo -e "${CatchAlert}${ERR_Startup_InvalidDir}"
		

#APPEND_PATH=""



function RunStartup() {
	pushd "${Startup}"
	declare -a StartScripts=$(
		grep -r -e ".*\.sh"
	)
	
	for $file in $StartScripts; do
		. $file
	done
	
	popd
}
