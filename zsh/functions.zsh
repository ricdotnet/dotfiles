function reload() {
  source "$HOME/.zshrc"
  echo ".zshrc reloaded!"
}

function hello() {
  echo "world"
}

# utilities
function hash() {
  echo -n $1 | shasum -a 256
}

function savecb() {
  if [[ pbpaste = "" ]]
  then
    echo "You have nothing in your clipboard"
    return
  fi

  if [[ $1 = "" ]]
  then
    echo "Saving clipboard content into file.txt"
    pbpaste >> file.txt
    return
  fi

  echo "Saving clipboard content into $1"
  pbpaste >> $1
}

function localip() {
  ip route | grep default | awk '{print $3}'
}
