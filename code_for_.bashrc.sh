#Replace apt & apt-get with nala
apt() {
  command nala "$@"
}

sudo() {
  if [ "$1" = "apt" ] || [ "$1" = "apt-get" ]; then
    local cmd=$1
    shift
    command sudo nala "$@"
  else
    command sudo "$@"
  fi
}
