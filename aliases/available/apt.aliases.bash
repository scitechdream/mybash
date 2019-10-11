#!/bin/bash
#
# -binaryanomaly

cite 'about-alias'
about-alias 'Apt and dpkg aliases for Ubuntu and Debian distros.'

# set apt aliases
function _set_pkg_aliases()
{
	if [ -x $(which apt) ]; then
		alias ags='apt search'
		alias agsh='apt show'
		alias agi='sudo apt-get install -V'
		alias agu='sudo apt-get update'

		alias agud='sudo apt-get update && sudo apt upgrade'
        alias agdr='sudo apt-get dist-upgrade -V && sudo apt-get autoremove'
		alias agudr='sudo apt-get update && sudo apt-get dist-upgrade -V && sudo apt-get autoremove'
		alias agr='sudo apt-get remove'
		alias agp='sudo apt-get purge'
		alias agac='sudo apt-get autoclean'
		alias agar='sudo apt-get autoremove'
		alias chkup='/usr/lib/update-notifier/apt-check -p --human-readable'
		alias chkboot='cat /var/run/reboot-required'

		alias pkgfiles='dpkg --listfiles'
	fi
}

_set_pkg_aliases
