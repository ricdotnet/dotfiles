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