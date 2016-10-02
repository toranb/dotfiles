#--------------------------------------------------------------------
# If we cd into a directory that is named the same as a virtualenv
# auto activate that virtualenv
# -------------------------------------------------------------------
[[ -a /usr/local/share/python/virtualenvwrapper.sh ]] && source /usr/local/share/python/virtualenvwrapper.sh
[[ -a /usr/local/bin/virtualenvwrapper.sh ]] && source /usr/local/bin/virtualenvwrapper.sh

workon_virtualenv() {
  if [[ -d .git ]]; then
     VENV_CUR_DIR="${PWD##*/}"
     if [[ -a ~/.virtualenvs/$VENV_CUR_DIR ]]; then
       deactivate > /dev/null 2>&1
       source ~/.virtualenvs/$VENV_CUR_DIR/bin/activate
     fi
  fi
}
