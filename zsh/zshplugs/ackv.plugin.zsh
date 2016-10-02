# ackvim open ack results in vim
#--------------------------------------------------------------------
ackv() {
   pattern=$1
   shift
   vim +"Ack '$pattern' $*"
}
