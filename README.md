# Replace apt & apt-get with nala


# How To:
Install NALA first

```
sudo apt install nala -y
```

# Run the following command

```
sudo nano ~/.bashr
```

# Paste the codes at the end of the file

```
# Replace apt &apt-get with nala
apt-get() {
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

```
# Save the file with ctrl+s and close ctrl+x
# Reboort your System.
