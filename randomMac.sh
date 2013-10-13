# var="$(ifconfig en0 | grep ether)"
# echo $var |sed 's/^......//'

randommac="$(openssl rand -hex 6 | sed 's/\(..\)/\1:/g; s/.$//')"

sudo ifconfig en0 ether "$randommac"
