#--------------------------------------------------------------------
# If we cd into a directory that contains a directory named node_modules
# we automatically add it to the $PATH
# -------------------------------------------------------------------
workon_node_env() {
  if [[ -d "node_modules" ]]; then

    export NPM_ORIGINAL_PATH=$PATH
    eval NODE_NAME=$(basename $(pwd))
    export PATH="${PATH}:$(pwd)/node_modules/.bin"

    deactivatenode(){
      export PATH=$NPM_ORIGINAL_PATH
      unset -f deactivatenode
      unset NODE_NAME
    }
  fi
}
