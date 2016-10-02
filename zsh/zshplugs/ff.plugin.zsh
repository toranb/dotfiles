# Find a file with a pattern in name:
#--------------------------------------------------------------------
function ff() { find . -type f -iname '*'"$*"'*' -ls ; }
