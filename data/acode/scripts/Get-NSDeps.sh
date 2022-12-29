#!/data/data/com.termux/files/usr/bin/bash/env bash

declare -g wgetLogs="~/.logs/downloads/wget.log"
declare -g downLogs="~/.logs/downloads"

if [[ -d ${downLogs} == $False ]]
then
	mkdir -p "${downLogs}"
fi

alias wget="wget --timestamping --restrict-file-names=windows "


wget --


# --backups=${wgetBackups}
# --rejected-log="${rejections}"

# Logs all URL rejections to logfile as comma separated values.  The values include the reason of rejection, the URL and the parent URL it was found in.


# --progress-type="bar"
# 	(or "dot")

# --show-progress
