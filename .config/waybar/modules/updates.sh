#! /usr/bin/env sh

(pacman -Qu ; echo "AUR" ; yay -Qum) | awk '
{
	if($1 == "AUR"){
		n_update=(NR-1)
		tooltip=tooltip"=== AUR Packages ===\r"
	} else {
		tooltip=tooltip$1"\r"
	}
} END {
	n_aur=(NR-n_update-1)
	tooltip = substr(tooltip, 1, length(tooltip)-1)
	print "{\"percentage\":"n_update", \"text\": \""n_aur"\", \"tooltip\": \""tooltip"\"}"
}
'
