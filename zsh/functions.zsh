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

# git functions
function pull() {
  branch=$(currentBranch)
  printf "Updating branch \033[34m%s\033[0m from remote\n" "$branch"
  git pull origin $branch
}

function push() {
  branch=$(currentBranch)

  if [[ $branch = "master" || $branch = "main" ]]
  then
    echo "Cannot push directly to \033[31m${branch}\033[0m"
    return
  fi

  echo "Will push to \033[31m${branch}\033[0m"
  git push origin $branch
}

function check() {
  if [[ $1 = "new" ]]
  then
    echo "Creating new branch \033[32m$2\033[0m"
    git checkout -b $2
    return
  fi

  echo "Preparing to work with branch \033[33m$1\033[0m"
  git checkout $1
}

function merge() {
  echo "Merging $1 into $(currentBranch)"
  git merge $1
}

function currentBranch() {
  echo $(git rev-parse --abbrev-ref HEAD)
}

# some java stuff
function useJava8() {
  export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_341.jdk/Contents/Home
  echo "using java 8"
  exportPathWithJava
}
function useJava17() {
  export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-17.jdk/Contents/Home
  echo "using java 17"
  exportPathWithJava
}
function exportPathWithJava() {
  export PATH=$JAVA_HOME/bin:$PATH
}
