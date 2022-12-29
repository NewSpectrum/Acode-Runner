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

#!!=========

# . "/storage/emulated/0/STORAGE/.dev/_DevTools/_terminals/Termux/Config/usr/etc/profile.d/SetVars.sh"

alias ls="ls -a -l -h -F --group-directories-first --color=always"

declare -g TmxEtcDir="/data/data/com.termux/files/usr/etc"
. "$TmxEtcDir/profile.d/SetVars.sh"
. "$TmxEtcDir/profile.d/SetAliases.sh"

declare -x TmxDev="/storage/emulated/0/STORAGE/.dev/_DevTools/_terminals/Termux"
declare -x ConfBackups="/storage/emulated/0/STORAGE/.dev/_DevTools/_terminals/Termux/Config/.backups"


function SyncTmxProfile {
	#- Declare Variables for Modified Configs
		declare NewTmxBashrc="/storage/emulated/0/STORAGE/.dev/_DevTools/_terminals/Termux/Config/usr/etc/bash.bashrc"
		declare NewStartups="/storage/emulated/0/STORAGE/.dev/_DevTools/_terminals/Termux/Config/usr/etc/profile.d"
		declare NewTmxMotd="/storage/emulated/0/STORAGE/.dev/_DevTools/_terminals/Termux/Config/usr/etc/motd"
		declare NewTmxProfile="/storage/emulated/0/STORAGE/.dev/_DevTools/_terminals/Termux/Config/usr/etc/profile"
		
	#- Declare Variables for Existing Configs (to be overwritten)
		declare TmxEtcDir="/data/data/com.termux/files/usr/etc"
		declare StartupScripts="/data/data/com.termux/files/usr/etc/profile.d"
	
	
	
	cp -v -f -u "$NewTmxBashrc" "$TmxEtcDir"
	cp -v -f -u --recursive "$NewStartups" "$StartupScripts"
	cp -v -f -u "$NewTmxProfile" "$TmxEtcDir"
	cp -v -f -u "$NewTmxMotd" "$TmxEtcDir"
}