#!/data/data/com.termux/files/usr/bin/bash/env bash

declare Startup="$HOME/config/startup"
declare GHConf="$HOME/config/gh"

declare DevDir=""

if [[ -d "$HOME/config/startup" != true ]]; then
	mkdir -p "${Startup}"
else
	continue
fi

function InstallPkgs() {
	1=$PkgList
	
	apt --update -q && apt --upgrade -q -y
	
	for $pkg in $PkgList; do
		apt install --satisfy --install-suggests -q -y \
			
}

if [[ -d "${GHConf}" != true ]]; then

	

else
	continue
fi




#=========

if [[ -d "${GHConf}" != true ]]; then
	# Process
else
	continue
fi