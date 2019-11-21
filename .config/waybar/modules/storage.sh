#!/bin/sh

warning=20
critical=10

df -h -P -l "$1" | awk -v warning=$warning -v critical=$critical '
/^\// {
	free=$4
	use=substr($5, 1, length($5)-1)
}
END {
	class=""
	if(use >= 100-warning) {
		class="warning"
	}
	if(use >= 100-critical) {
		class="critical"
	}
	
	print "{\"text\":\""free"\", \"class\":\""class"\", \"percentage\":"use"}"
}
'
