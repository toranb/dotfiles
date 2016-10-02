# Run the virtual environments functions for the prompt on each cd
# -------------------------------------------------------------------
cd() {
  builtin cd "$@"
  unset NODE_NAME
  workon_virtualenv
  workon_node_env
}
